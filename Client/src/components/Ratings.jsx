import React from 'react';
import Rating from './Rating.jsx';
import axios from 'axios';

class Ratings extends React.Component {
    constructor(props){
        super(props); 
        this.state = {
        reviews: [] 
        }
        this.handleGettingAverages = this.handleGettingAverages.bind(this);
    }
    
    handleGettingAverages() {
        axios.get('/rating')
            .then((data) => {
                this.setState({ reviews: data.data })
            })
    }

    componentDidMount () {
        this.handleGettingAverages();
    }

    render(){
        // console.log(this.state.reviews[0].Accuracy)
        return (
            <div> 
                {/* {this.state.reviews.length>0 &&this.state.reviews[0]} */}
                <Rating ratings={this.state.reviews}/> 
            </div>
        )
    }
}

export default Ratings; 

