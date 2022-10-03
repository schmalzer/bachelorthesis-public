import { LayersModel, Tensor } from '@tensorflow/tfjs';
import * as tf from '@tensorflow/tfjs';

export class LSTMSolarPredictor {
    model: LayersModel;

    constructor(model: LayersModel) {
      this.model = model;
    }
   
    predict(tensor: Tensor): number{
        tensor = tf.reshape(tensor, [1,7,2]);
        const predictionTensor = this.model.predict(tensor) as Tensor<tf.Rank>;
        return predictionTensor.dataSync()[0];
    }
  }
   