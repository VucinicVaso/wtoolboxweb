import '../wtw_translations.dart';

class WTWEnUsTranslations extends WTWTranslations {

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      "key": "${2}",
      "label": "en_US",
      "language": "English",
      "developedBy": "Vaso Vucinic",
      "languages": '''[
        { 
          "key":      ${1}, 
          "label":    "me_MNE",
          "language": "Montenegrin",
          "image":    "assets/mne_flag.png",
          "selected": ${false}
        },
        {
          "key":      ${2},
          "label":    "en_US",
          "language": "English",
          "image":    "assets/great_britain_flag.png", 
          "selected": ${true} 
        }
      ]''',
      "preferredLanguage": "Preferred language",
      "search": "Search...",
      "format": "Format: @value",
      "goBack": "Return",
      "continue": "Continue",
      "skip": "Skip",
      "cancel": "Cancel",
      "select": "Select",
      "save": "Save",
      "delete": "Delete",
      "edit": "Edit",
      "details": "Details",
      "allow": "Allow",
      "apply": "Apply",
      "submit1": "Submit",
      "submit2": "Submitting...",
      "next": "Next",
      "add": "Add",
      "new": "New",
      "title": "Title",
      "loading": "Loading...",
      "reviewAll": "Review all",
      "viewAll": "View all",
      "routeNotFount": "Route not found.",
      "errorTitle": "Error",
      "errorsTitle": "Errors",
      "errorMessage": "Something went wrong please try again!",
      "contentMissing": "The content of these page is currently unavailable.",
      "loginOptionPin": "PIN",
      "uploadFile": "Upload files",
      "chooseFile": "Choose files to upload",
      "selectedFiles": "Selected files",
      "moreFormFields": "Show more fields",
      "attachments": "Attachments",
      "signature": "Signature",
      "clear": "Clear",
      "done": "Done",
      "confirm": "Confirm",
      // websocket errors
      "stompError1": "Auth token is missing.",
      "stompError2": "Auth token is invalid.",
      "stompError3": "'Unknown Websocket connection error.",
      "stompError4": "Websocket connection error.",
      // validation
      "emptyValidator": "Field ''@value'' is empty.",
      "emptySpaceValidator": "''@value'' contains empty space.",
      "emailValidator": "''@value'' is not a valid email.",
      "emailValidator1": "It is possible to enter letters, numbers and characters . + _",
      "phoneValidator": "Phone number can only contain sign + and numbers.",
      "letterValidator": "''@value'' contains letters.",
      "numberValidator": "''@value'' contains numbers.",
      "nonAlphanumericValidator": "''@value'' contains non-alphanumeric characters.",
      "invalidValidator": "''@value'' is invalid.",
      "negativeValidator": "''@value'' must not be negative.",
      "minLengthValidator": "''@key'' must be minimum ''@value'' characters long.",
      "missingValidator": "''@key'' is missing ''@value''.",
    },
  };

}