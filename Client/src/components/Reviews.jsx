import React from 'react';
import Review from './Review.jsx';


class Reviews extends React.Component {
    constructor(props) {
        super(props)

        this.state = {
            review :[]

        }

    }

    render() {
        return (
            <div>
            <ul>
            </ul>
            <div>
                <div>

                    {this.props.rev.map((item) => (
                        <Review review={item} />
                    ))}
    
                </div>
            </div>
            </div>
        )
    }


}

export default Reviews;