/* tslint:disable */

declare var Object: any;
export interface OzanLibraryInterface {
  "id"?: number;
  "idOrder"?: string;
  "nameFile"?: string;
}

export class OzanLibrary implements OzanLibraryInterface {
  "id": number;
  "idOrder": string;
  "nameFile": string;
  constructor(data?: OzanLibraryInterface) {
    Object.assign(this, data);
  }
  /**
   * The name of the model represented by this $resource,
   * i.e. `OzanLibrary`.
   */
  public static getModelName() {
    return "OzanLibrary";
  }
  /**
  * @method factory
  * @author Jonathan Casarrubias
  * @license MIT
  * This method creates an instance of OzanLibrary for dynamic purposes.
  **/
  public static factory(data: OzanLibraryInterface): OzanLibrary{
    return new OzanLibrary(data);
  }
  /**
  * @method getModelDefinition
  * @author Julien Ledun
  * @license MIT
  * This method returns an object that represents some of the model
  * definitions.
  **/
  public static getModelDefinition() {
    return {
      name: 'OzanLibrary',
      plural: 'OzanLibraries',
      path: 'OzanLibraries',
      idName: 'id',
      properties: {
        "id": {
          name: 'id',
          type: 'number'
        },
        "idOrder": {
          name: 'idOrder',
          type: 'string'
        },
        "nameFile": {
          name: 'nameFile',
          type: 'string'
        },
      },
      relations: {
      }
    }
  }
}
