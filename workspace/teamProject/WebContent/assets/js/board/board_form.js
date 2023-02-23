    function getImageFiles(e) {
      const files = e.currentTarget.files;
      console.log(typeof files, files);
    }

    const realUpload = document.querySelector('.input-imagebutton');
    const upload = document.querySelector('input[type=file]');

    upload.addEventListener('click', () => realUpload.click());
    realUpload.addEventListener('change', getImageFiles);

