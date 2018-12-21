import React from 'react';
import Rating from './Rating.jsx';
import axios from 'axios';

class Ratings extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            reviews: []
        }
        this.handleGettingAverages = this.handleGettingAverages.bind(this);
    }

    componentDidMount() {
        this.handleGettingAverages();
    }

   async  handleGettingAverages() {
      await  axios
        .get(`/rating/${this.props.listingId}`)
         .then(({data}) => {
                this.setState({ reviews: data});
            })
          .catch((err) => console.log(err))
    }


    render() {
        return (
            <div>
                <Rating ratings={this.state.reviews} />
            </div>
        )
    }
}

export default Ratings;

