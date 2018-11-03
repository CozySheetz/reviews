import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Reviews from './components/Reviews.jsx';
import Ratings from './components/Ratings.jsx';
import Search from './components/Search.jsx';
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      reviews: [],
      averages: [],
      filtered: false,
      filteredReview : []
    };
    this.handleGettingAverages = this.handleGettingAverages.bind(this);
    this.getUserInformation = this.getUserInformation.bind(this);
    this.handleSearch =this.handleSearch.bind(this);
  }
  

  handleGettingAverages() {
  
    var path = window.location.href;
    var splits = path.split('/');
    var id = parseInt(splits[splits.length - 1]);


    axios.get(`http://18.224.94.179/rating/${id}`).then((response) => {
 
      // console.log('Dot data',data.data)
      this.setState({
        averages: response
      });
    });
  }

  getUserInformation() {
    var path = window.location.href;
    var splits = path.split('/');
    var id = parseInt(splits[splits.length - 1]);
    axios.get(`http://18.224.94.179/user/${id}`).then(data => {
      this.setState({reviews: data.data});
    });
  }

  handleSearch(filter) {
   this.setState({filteredReview: filter, filtered: true});
  
  }

  componentDidMount() {
    this.getUserInformation();
    this.handleGettingAverages(); 
  }


  render() {
    return (
      <div className="app">
        <header className="navbar">
        </header>

        <div className="main container w-50">
    
          <Search  search={this.handleSearch} reviewLength={this.state.reviews.length}/> 
          <Ratings averages={this.state.averages}  /> 
          <Reviews rev={this.state.filtered === false ? this.state.reviews: this.state.filteredReview} />

        </div>
      </div>
    );
  }
}

// window.Reviews = App; 

ReactDOM.render(<App/>, document.getElementById('reviews-app'))