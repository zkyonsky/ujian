<div>
   
  @if(isset($selectedQuestion))
    <div class="form-group">
      <label>SELECTED QUESTIONS</label>
      <table id="table_id" class="table table-bordered table-hover">
        <thead>
        <tr>
          <th>Delete</th>
          <th>Subject</th>
          <th>Detail Question</th>
          <th>Checked</th>
        </tr>
        </thead>
        <tbody>
        @if (isset($questionsAll))
            @foreach ($questionsAll as $question)
            <tr>
              <td>
                  <button type="button" class="btn btn-danger" wire:click="deselectQuestion({{ $question->id }})"><i class="fas fa-minus-circle"></i></button>
              </td>
              <td>{{ $subject->getName($question->subject_id) }}</td>
              <td>{{ $question->detail }}</td>
              <td><input class="form-check-input" type="checkbox" name="questions[]" value="{{ $question->id }}" 
                id="check-{{ $question->id }}" }} checked></td>
            </tr>
            @endforeach
        @endif
        
        </tbody>
      </table>
    </div>
  @endif
    <div class="card">
        <div class="card-header">
            <h3>Add Questions</h3>
        </div>
        <div class="card-body">
          {{-- @foreach ($selectedQuestion as $item)
              {{ $item  }}
          @endforeach --}}
                
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="p" wire:model="p"
                                placeholder="cari berdasarkan subject">
                        <input type="text" class="form-control" name="q" wire:model="q"
                               placeholder="cari berdasarkan detail question">
                    </div>
          <table id="table_id" class="table table-bordered table-hover">
            <thead>
            <tr>
              <th>Choose</th>
              <th>Subject</th>
              <th>Detail Question</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($questions as $question)
              <tr>
                <td>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" wire:model="selectedQuestion" type="checkbox" name="questions[]" value="{{ $question->id }}" 
                               id="check-{{ $question->id }}" }}>
                    </div>
                </td>
                <td>{{ $subject->getName($question->subject_id) }}</td>
                <td>{{ $question->detail }}</td>
              </tr>
            @endforeach
            </tbody>
          </table>
         
          <div style="text-align: center">
            {{$questions->links()}}
          </div>
        </div>
    </div>
</div>
