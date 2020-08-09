export interface Poll extends PollForm {
  id: number, //     12
  results: number[], // [0, 0, 0, 0, 5, 7]
  voted: boolean
}

export interface PollForm {
  question: string,
  options: string[],
  thumbnail: string
}

export interface PollVote {
  id: number;
  vote: number;
}

export interface Voter {
  id: string, // 0xFULSDFJUFUWOOUF
  voted: number[], // [12]
}

