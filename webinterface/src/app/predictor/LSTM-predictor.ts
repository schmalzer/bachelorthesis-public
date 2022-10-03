import { LayersModel, Tensor } from '@tensorflow/tfjs';
import * as tf from '@tensorflow/tfjs';

export class LSTMPredictor {
    model: LayersModel;

    constructor(model: LayersModel) {
      this.model = model;
    }
   
    predict(tensor: Tensor): number{
        tensor = tf.reshape(tensor, [1,7,1]); //1,7,2 if using with weather data
        const predictionTensor = this.model.predict(tensor) as Tensor<tf.Rank>;
        return predictionTensor.dataSync()[0];
    }
  }
   