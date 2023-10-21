import React, { Component } from 'react';

class ErrorBoundary extends Component {
  constructor(props) {
    super(props);
    this.state = { hasError: false };
  }

  componentDidCatch(error, info) {
    this.setState({ hasError: true });
    // You can also log the error to an error tracking service here.
  }

  render() {
    if (this.state.hasError) {
      // You can customize the error message or render a fallback UI here.
      return <div>Something went wrong. Please refresh the page.</div>;
    }
    return this.props.children;
  }
}

export default ErrorBoundary;
