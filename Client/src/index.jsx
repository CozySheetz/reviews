import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Reviews from './components/Reviews.jsx';
import Ratings from './components/Ratings.jsx';
import Search from './components/Search.jsx';
import {getListingId} from './utilities/helpers.jsx'; 
class App extends React.Component {
  constructor() {
    super();
    this.state = {
      reviews: [],
      averages: [],
      filtered: false,
      filteredReviews : [],
      listingId: ''
    };
    
    this.getAverages = this.getAverages.bind(this);
    this.getUserInformation = this.getUserInformation.bind(this);
    this.handleSearch =this.handleSearch.bind(this);
  }
  
  async componentDidMount ()  {
      await getListingId(this); 
      this.getUserInformation();
      this.getAverages(); 
  }

  getAverages() {
    axios
      .get(`/rating/${this.state.listingId}}`)
      .then(({data}) => {
      this.setState({averages: data});
    });
  }

  getUserInformation() {
    axios
      .get(`/user/${this.state.listingId}`)
      .then(({data})=> {
      this.setState({reviews: data});
    });
  }

  handleSearch(filteredReviews) {
   this.setState({filteredReviews, filtered: true});
  }

  render() {
    return (
      <div className="app">
        <div className="main container w-50">
          <Search  handleSearch={this.handleSearch} reviewLength={this.state.reviews.length} listingId={this.state.listingId}/> 
          <Ratings averages={this.state.averages} listingId={this.state.listingId}/> 
          <Reviews rev={this.state.filtered === false ? this.state.reviews: this.state.filteredReviews}/>
        </div>
      </div>
    );
  }
}


ReactDOM.render(<App/>, document.getElementById('reviews-app'))