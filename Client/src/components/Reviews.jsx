import React from 'react';
import Review from './Review.jsx';


class Reviews extends React.Component {
    constructor(props) {
        super(props)

        this.state = {
            review :[]

        }

        // this.getReview = this.getReview.bind(this);
    }

// getReview () {
 
//     this.props.rev.map((item)=>(
//         this.setState({review: item})
//     ))
//     console.log('in get review')

//     console.log(this.state)
// }
 

    render() {
       
        return (
            <div>
            <ul>
               {/* { this.props.rev.map((item)=> (
                   <div> {item.first_name}</div> */}
                   
                   
                {/* ))} */}
            </ul>
            <div>
                <div>

                    {this.props.rev.map((item) => (
                        <Review review={item} />
                    ))}
                    <button onClick={this.getReview}> </button>
                </div>
            </div>
            </div>
        )
    }


}

export default Reviews;