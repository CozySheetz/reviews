import React from 'react';
// import SearchBar from 'material-ui-search-bar'
import axios from 'axios'


class Search extends React.Component{
    constructor(props){
        super(props)
        this.state = {
            searchWords:''
        }
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleChange = this.handleChange.bind(this);
    }

    handleChange(e) {
        this.setState({searchWords:e.target.value})
        
    }

    handleSubmit(e){
        e.preventDefault()
        axios.post('/search', {
        words: this.state.searchWords
        })
        .then((data) => this.props.search(data.data))
        .then(this.setState({searchWords:''}))
    }


render() {
    return  (
    <form
     onSubmit={this.handleSubmit}
     > 
    <input type ='text' value={this.state.searchWords} onChange={this.handleChange} />
    </form> 
   )
   
}
}

export default Search; 