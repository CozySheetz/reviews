
export function getListingId (component) {
    var path = window.location.href;
    var splits = path.split("/");
    var listingId = parseInt(splits[splits.length - 1]);
    component.setState({listingId}); 
}
