import React from 'react';
import Rating from './Rating.jsx';
import axios from 'axios';

class Ratings extends React.Component {
    constructor(props){
        super(props); 
        this.state = {
        // reviewItem: [] 
        }
        // this.handleGettingAverages = this.handleGettingAverages.bind(this);
    }
    
    handleGettingPairs () {

    }
    // handleGettingAverages () {
    //     console.log('in averages')
    //  axios.get('/rating')
    //       .then((data) => {
    //           console.log(data.data)
    //           this.setState({reviews: data.data})
    //         })
    // }

    componentDidMount () {
        // this.handleGettingAverages();
    }

    render(){
        return (
            <div> 
                <Rating /> 
            </div>
        )
    }
}

export default Ratings; 

