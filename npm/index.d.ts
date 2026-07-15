declare module '@apiverve/wordpronunciation' {
  export interface wordpronunciationOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface wordpronunciationResponse {
    status: string;
    error: string | null;
    data: WordPronunciationData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface WordPronunciationData {
      word:           null | string;
      pronounciation: null | string;
  }

  export default class wordpronunciationWrapper {
    constructor(options: wordpronunciationOptions);

    execute(callback: (error: any, data: wordpronunciationResponse | null) => void): Promise<wordpronunciationResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: wordpronunciationResponse | null) => void): Promise<wordpronunciationResponse>;
    execute(query?: Record<string, any>): Promise<wordpronunciationResponse>;
  }
}
