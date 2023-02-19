import '../App.css';
import HeadSection from '../components/HeadSection';
import About from '../components/About';
import Recomend from '../components/Recomend';
import FooterSection from '../components/FooterSection';
import Catalog from './Catalog';

function App() {
  return (
    <><HeadSection />
      <About />
      <Recomend />
      <FooterSection /> 
    </>
  );
}

export default App;