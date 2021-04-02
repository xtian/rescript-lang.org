/* Contains some generic hooks */

let useOutsideClick: (ReactDOM.Ref.t, unit => unit) => unit = %raw(j`(outerRef, trigger) => {
  const React = require('react')
  function handleClickOutside(event) {
    if (outerRef.current && !outerRef.current.contains(event.target)) {
      trigger();
    }
  }

  React.useEffect(() => {
    document.addEventListener("mousedown", handleClickOutside);
    return () => {
      document.removeEventListener("mousedown", handleClickOutside);
    };
  });
}`)

let useWindowWidth: unit => option<int> = %raw(j` () => {
  const React = require('react')
  const isClient = typeof window === 'object';

  function getSize() {
    return {
      width: isClient ? window.innerWidth : undefined,
      height: isClient ? window.innerHeight : undefined
    };
  }

  const [windowSize, setWindowSize] = React.useState(getSize);

  React.useEffect(() => {
    if (!isClient) {
      return false;
    }

    function handleResize() {
      setWindowSize(getSize());
    }

    window.addEventListener('resize', handleResize);
    return () => window.removeEventListener('resize', handleResize);
  }, []); // Empty array ensures that effect is only run on mount and unmount

  if(windowSize) {
    return windowSize.width;
  }
  return null;
}`)
