class Test extends React.Component {
    constructor(props) {
        super(props);
    }
    render() {
        contents = this.props.text.map((i)=>{
            return <p>{i.content}</p>;
        });
        return (
            {contents}
        )
    }
};