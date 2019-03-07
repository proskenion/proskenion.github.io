# Protocol Documentation
<a name="top"></a><br /> 
## Table of Contents<br /> 
- [api.proto](#api.proto)
    - [TxResponse](#proskenion.TxResponse)
  
  
  
    - [API](#proskenion.API)
  <br /> 
- [consensus.proto](#consensus.proto)
    - [ConsensusResponse](#proskenion.ConsensusResponse)
    - [PropagateBlockRequest](#proskenion.PropagateBlockRequest)
    - [PropagateBlockResponse](#proskenion.PropagateBlockResponse)
  
  
  
    - [Consensus](#proskenion.Consensus)
  <br /> 
- [objects.proto](#objects.proto)
    - [Account](#proskenion.Account)
    - [ActivatePeer](#proskenion.ActivatePeer)
    - [AddBalance](#proskenion.AddBalance)
    - [AddObject](#proskenion.AddObject)
    - [AddPeer](#proskenion.AddPeer)
    - [AddPublicKeys](#proskenion.AddPublicKeys)
    - [Address](#proskenion.Address)
    - [BanPeer](#proskenion.BanPeer)
    - [Block](#proskenion.Block)
    - [Block.Payload](#proskenion.Block.Payload)
    - [CheckAndCommitProsl](#proskenion.CheckAndCommitProsl)
    - [CheckAndCommitProsl.VariablesEntry](#proskenion.CheckAndCommitProsl.VariablesEntry)
    - [Command](#proskenion.Command)
    - [Consign](#proskenion.Consign)
    - [CreateAccount](#proskenion.CreateAccount)
    - [CreateStorage](#proskenion.CreateStorage)
    - [DefineStorage](#proskenion.DefineStorage)
    - [ForceUpdateStorage](#proskenion.ForceUpdateStorage)
    - [MegaBinaryChunk](#proskenion.MegaBinaryChunk)
    - [MegaStorage](#proskenion.MegaStorage)
    - [MegaStorage.MetaEntry](#proskenion.MegaStorage.MetaEntry)
    - [Object](#proskenion.Object)
    - [ObjectDict](#proskenion.ObjectDict)
    - [ObjectDict.DictEntry](#proskenion.ObjectDict.DictEntry)
    - [ObjectList](#proskenion.ObjectList)
    - [OrderBy](#proskenion.OrderBy)
    - [Peer](#proskenion.Peer)
    - [RemovePublicKeys](#proskenion.RemovePublicKeys)
    - [SetQuorum](#proskenion.SetQuorum)
    - [Signature](#proskenion.Signature)
    - [Storage](#proskenion.Storage)
    - [Storage.ObjectEntry](#proskenion.Storage.ObjectEntry)
    - [SuspendPeer](#proskenion.SuspendPeer)
    - [Transaction](#proskenion.Transaction)
    - [Transaction.Payload](#proskenion.Transaction.Payload)
    - [TransferBalance](#proskenion.TransferBalance)
    - [TransferObject](#proskenion.TransferObject)
    - [UpdateObject](#proskenion.UpdateObject)
  
    - [ObjectCode](#proskenion.ObjectCode)
    - [OrderCode](#proskenion.OrderCode)
  
  
  <br /> 
- [prosl.proto](#prosl.proto)
    - [AndFormula](#proskenion.AndFormula)
    - [AndOperator](#proskenion.AndOperator)
    - [AssertOperator](#proskenion.AssertOperator)
    - [CastOperator](#proskenion.CastOperator)
    - [CommandOperator](#proskenion.CommandOperator)
    - [CommandOperator.ParamsEntry](#proskenion.CommandOperator.ParamsEntry)
    - [ConcatOperator](#proskenion.ConcatOperator)
    - [ConditionalFormula](#proskenion.ConditionalFormula)
    - [DivisionOperator](#proskenion.DivisionOperator)
    - [EachOperator](#proskenion.EachOperator)
    - [ElifOperator](#proskenion.ElifOperator)
    - [ElseOperator](#proskenion.ElseOperator)
    - [EqFormula](#proskenion.EqFormula)
    - [ErrCatchOperator](#proskenion.ErrCatchOperator)
    - [GeFormula](#proskenion.GeFormula)
    - [GtFormula](#proskenion.GtFormula)
    - [IfOperator](#proskenion.IfOperator)
    - [IndexedOperator](#proskenion.IndexedOperator)
    - [IsDefinedOperator](#proskenion.IsDefinedOperator)
    - [LeFormula](#proskenion.LeFormula)
    - [LenOperator](#proskenion.LenOperator)
    - [ListComprehensionOperator](#proskenion.ListComprehensionOperator)
    - [ListOperator](#proskenion.ListOperator)
    - [LtFormula](#proskenion.LtFormula)
    - [MapOperator](#proskenion.MapOperator)
    - [MapOperator.ObjectEntry](#proskenion.MapOperator.ObjectEntry)
    - [MinusOperator](#proskenion.MinusOperator)
    - [ModOperator](#proskenion.ModOperator)
    - [MultipleOperator](#proskenion.MultipleOperator)
    - [NeFormula](#proskenion.NeFormula)
    - [NotFormula](#proskenion.NotFormula)
    - [OrFormula](#proskenion.OrFormula)
    - [OrOperator](#proskenion.OrOperator)
    - [PageRankOperator](#proskenion.PageRankOperator)
    - [PlusOperator](#proskenion.PlusOperator)
    - [Prosl](#proskenion.Prosl)
    - [ProslOperator](#proskenion.ProslOperator)
    - [QueryOperator](#proskenion.QueryOperator)
    - [RequireOperator](#proskenion.RequireOperator)
    - [ReturnOperator](#proskenion.ReturnOperator)
    - [SetOperator](#proskenion.SetOperator)
    - [SliceOperator](#proskenion.SliceOperator)
    - [SortOperator](#proskenion.SortOperator)
    - [StorageOperator](#proskenion.StorageOperator)
    - [TxOperator](#proskenion.TxOperator)
    - [ValueOperator](#proskenion.ValueOperator)
    - [ValuedOperator](#proskenion.ValuedOperator)
    - [VariableOperator](#proskenion.VariableOperator)
    - [VerifyOperator](#proskenion.VerifyOperator)
    - [XorOperator](#proskenion.XorOperator)
  
    - [ErrCode](#proskenion.ErrCode)
  
  
  <br /> 
- [query.proto](#query.proto)
    - [Query](#proskenion.Query)
    - [Query.Payload](#proskenion.Query.Payload)
    - [QueryResponse](#proskenion.QueryResponse)
  
  
  
  <br /> 
- [sync.proto](#sync.proto)
    - [SyncRequest](#proskenion.SyncRequest)
    - [SyncResponse](#proskenion.SyncResponse)
  
  
  
    - [Sync](#proskenion.Sync)
  <br /> 
- [Scalar Value Types](#scalar-value-types)<br /> 
<br /> 
<a name="api.proto"></a>
<p align="right"><a href="#top">Top</a></p><br /> 
## api.proto<br /> 
<br /> 
<a name="proskenion.TxResponse"></a><br /> 
### TxResponse
Error は GRPC Error Code で返す<br /> 
<br /> 
<br /> 
 <br /> 
 <br /> 
 <br /> 

<a name="proskenion.API"></a><br /> 
### API
TxGate は Client から Transaction を受け取る<br /> 
| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Write | [Transaction](#proskenion.Transaction) | [TxResponse](#proskenion.TxResponse) | Write は Transaction を受け付ける。 受け取った Transaction は ProposalTxQueue に挿入した後、他のPeerに伝搬する。<br /> 
InvalidArgument (code = 3) : One of following conditions: 1 ) StatelessValidator で落ちる場合 AlreadyExist (code = 6) : One of following conditions: 1 ) 既に同じ Transaction を受け取っていた場合 |
| Read | [Query](#proskenion.Query) | [QueryResponse](#proskenion.QueryResponse) | Read は Query を受け付ける。 受け取った Query の規則に従ってデータを取得し Peer の署名を添付した QueryResponse を返す。<br /> 
InvalidArgument (code = 3) : One of following conditions: 1 ) Verify で落ちる場合 2 ) Validate で落ちる場合 NotFound (code = 5) : One of following conditions: 1 ) 検索結果が見つからなかった場合 |<br /> 
 <br /> 
<br /> 
<a name="consensus.proto"></a>
<p align="right"><a href="#top">Top</a></p><br /> 
## consensus.proto<br /> 
<br /> 
<a name="proskenion.ConsensusResponse"></a><br /> 
### ConsensusResponse
Error は GRPC Error Code で返す<br /> 
<br /> 
<br /> 

<a name="proskenion.PropagateBlockRequest"></a><br /> 
### PropagateBlockRequest
PropagateBlock において伝搬する側が送信するデータである。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block | [Block](#proskenion.Block) |  | 伝搬する Block。最初に Block を送信する。 |
| transaction | [Transaction](#proskenion.Transaction) |  | 伝搬する Block が持っている Transaction。Block を送信した後に順番に送信する。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.PropagateBlockResponse"></a><br /> 
### PropagateBlockResponse
PropagateBlock において伝搬される側が送信するデータである。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature | [Signature](#proskenion.Signature) |  | Block を正しく受け取ったことを伝搬する側に伝えるために署名を送信する。 |<br /> 
<br /> 
<br /> 
 <br /> 
 <br /> 
 <br /> 

<a name="proskenion.Consensus"></a><br /> 
### Consensus
ConsensusGate は合意形成に使用する rpc を定義する。
これを使用するのは合意形成に参加するPeerのみである。<br /> 
| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| PropagateTx | [Transaction](#proskenion.Transaction) | [ConsensusResponse](#proskenion.ConsensusResponse) | PropagateTx は Client から受け取った Transaction を自分以外の Peer に伝搬させる。 Context には送信者の署名をつける。<br /> 
InvalidArgument (code = 3) : One of following conditions: 1 ) StatelessValidator で落ちる場合 PermissionDenied (code = 7) : One of following conditions: 1 ) Context の 署名の主がPeerでない場合 |
| PropagateBlock | [PropagateBlockRequest](#proskenion.PropagateBlockRequest) stream | [PropagateBlockResponse](#proskenion.PropagateBlockResponse) stream | PropagateBlock は Commit する block と txList を自分以外の Peer に伝搬させる。 Context には送信者の署名をつける<br /> 
InvalidArgument (code = 3) : One of following conditions: 1 ) Block is nil. 2 ) Block Verify failed. 3 ) Transaction is nil. 4 ) Transaction Verify failed. AlreadyExist (code = 6) : One of following conditions: 1 ) Block is already exist in block queue. PermissionDenied (code = 7) : One of following conditions: 1 ) Context の 署名の主がPeerでない場合 |<br /> 
 <br /> 
<br /> 
<a name="objects.proto"></a>
<p align="right"><a href="#top">Top</a></p><br /> 
## objects.proto<br /> 
<br /> 
<a name="proskenion.Account"></a><br /> 
### Account<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| accountId | [string](#string) |  |  |
| accountName | [string](#string) |  |  |
| publicKeys | [bytes](#bytes) | repeated |  |
| quorum | [int32](#int32) |  |  |
| balance | [int64](#int64) |  |  |
| delegatePeerId | [string](#string) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ActivatePeer"></a><br /> 
### ActivatePeer
ActivatePeer は Peer を active 状態にする。
TargetId は AccountId(PeerId) を指定する。
Active 状態の Peer は合意形成に参加できる。<br /> 
<br /> 
<br /> 

<a name="proskenion.AddBalance"></a><br /> 
### AddBalance
AddBalance は targetId の balance を増やす。
TargetId は AccountId を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| balance | [int64](#int64) |  | 増やす balance の量。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.AddObject"></a><br /> 
### AddObject
AddObject は TargetId で指定した Storage に Object を追加する。（list or dict)
TargetId は WalletId を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | Storage 内の要素を指定するためのキー値。 |
| object | [Object](#proskenion.Object) |  | 指定した List Object に追加する Object。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.AddPeer"></a><br /> 
### AddPeer
AddPeer はネットワークに Peer を追加する。
TargetId は AccountId(PeerId) を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Peer にアクセスするためのグローバルアドレス。 |
| publicKey | [bytes](#bytes) |  | Peer を操作するための公開鍵。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.AddPublicKeys"></a><br /> 
### AddPublicKeys
AddPublicKey は TragetId で指定したアカウントに鍵を追加する。
TargetId は AccountId を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| publicKeys | [bytes](#bytes) | repeated | アカウントに登録する公開鍵のリスト。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.Address"></a><br /> 
### Address<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.BanPeer"></a><br /> 
### BanPeer
BanPeer は Peer を使用禁止にする。
TargetId は AccountId(PeerId) を指定する。
Ban された Peer は金輪際合意形成/同期に参加できない。<br /> 
<br /> 
<br /> 

<a name="proskenion.Block"></a><br /> 
### Block
Block の構造。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [Block.Payload](#proskenion.Block.Payload) |  |  |
| signature | [Signature](#proskenion.Signature) |  | Payload を現在のラウンドにおけるリーダーが署名したもの。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.Block.Payload"></a><br /> 
### Block.Payload<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| height | [int64](#int64) |  | 現在のBlockのHeight&#43;1。 |
| preBlockHash | [bytes](#bytes) |  | 現在の Block のハッシュ値。 |
| createdTime | [int64](#int64) |  | Blockを生成した時間(リーダーがProposalを生成した時間であり、Commitされた時間ではない)。 |
| wsvHash | [bytes](#bytes) |  | Block 実行後の WSV のルートハッシュ値。 |
| txHistoryHash | [bytes](#bytes) |  | Block 実行後の TxHistory のルートハッシュ値。 |
| txListHash | [bytes](#bytes) |  | Transaction の集合（列)のハッシュ値。 |
| round | [int32](#int32) |  | 現在の Round。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.CheckAndCommitProsl"></a><br /> 
### CheckAndCommitProsl
CheckAndCommitProsl は TargetId で指定した ProSL を検証して妥当であれば適用する。
TargetId は WalletId を指定する。
具体的には variables を引数列として渡して Update ProSL を実行し真を返した時、
新たな incentive or consensus or update アルゴリズムとして実際に適用する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| variables | [CheckAndCommitProsl.VariablesEntry](#proskenion.CheckAndCommitProsl.VariablesEntry) | repeated | Update ProSL を実行する際の引数列。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.CheckAndCommitProsl.VariablesEntry"></a><br /> 
### CheckAndCommitProsl.VariablesEntry<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Object](#proskenion.Object) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.Command"></a><br /> 
### Command
================ Command ================
Proskenion を操作するためのプリミティブな命令。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| authorizerId | [string](#string) |  | 誰の権限で命令を実行するかを AccountId で指定する。 |
| targetId | [string](#string) |  | どの対象に命令を実行するかを指定する。 |
| createAccount | [CreateAccount](#proskenion.CreateAccount) |  |  |
| addBalance | [AddBalance](#proskenion.AddBalance) |  |  |
| transferBalance | [TransferBalance](#proskenion.TransferBalance) |  |  |
| addPublicKeys | [AddPublicKeys](#proskenion.AddPublicKeys) |  |  |
| removePublicKeys | [RemovePublicKeys](#proskenion.RemovePublicKeys) |  |  |
| setQuorum | [SetQuorum](#proskenion.SetQuorum) |  |  |
| defineStorage | [DefineStorage](#proskenion.DefineStorage) |  |  |
| createStorage | [CreateStorage](#proskenion.CreateStorage) |  |  |
| updateObject | [UpdateObject](#proskenion.UpdateObject) |  |  |
| addObject | [AddObject](#proskenion.AddObject) |  |  |
| transferObject | [TransferObject](#proskenion.TransferObject) |  |  |
| addPeer | [AddPeer](#proskenion.AddPeer) |  |  |
| activatePeer | [ActivatePeer](#proskenion.ActivatePeer) |  |  |
| suspendPeer | [SuspendPeer](#proskenion.SuspendPeer) |  |  |
| banPeer | [BanPeer](#proskenion.BanPeer) |  |  |
| consign | [Consign](#proskenion.Consign) |  |  |
| checkAndCommitProsl | [CheckAndCommitProsl](#proskenion.CheckAndCommitProsl) |  |  |
| forceUpdateStorage | [ForceUpdateStorage](#proskenion.ForceUpdateStorage) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.Consign"></a><br /> 
### Consign
Consign は Account と Peer を紐付ける
TargetId は AccountId を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| peerId | [string](#string) |  | アカウントが信頼する Peer の id。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.CreateAccount"></a><br /> 
### CreateAccount
CerateAccount は TargetId の アカウントの生成を行う。
TargetId には AccountId を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| publicKeys | [bytes](#bytes) | repeated | アカウントに登録する公開鍵のリスト。 |
| quorum | [int32](#int32) |  | アカウントの権限を行使するために必要な最小の鍵の数。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.CreateStorage"></a><br /> 
### CreateStorage
CreateStorage は定義された Storage を TargetId で指定されたアカウントで実体化する。
TargetId は WalletId を指定する。<br /> 
<br /> 
<br /> 

<a name="proskenion.DefineStorage"></a><br /> 
### DefineStorage
DefineStorage は Storage を定義する。
TargetId は StorageId を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| storage | [Storage](#proskenion.Storage) |  | Storage の key とそのデフォルトの value。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.ForceUpdateStorage"></a><br /> 
### ForceUpdateStorage
ForceUpdateStorage は TargetId で指定した Storage を強制上書きする。
TargetId は WalletId を指定する。
ForceUpdateStorage は Validate で必ず false が返る。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| storage | [Storage](#proskenion.Storage) |  | 上書き後の Storage の定義。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.MegaBinaryChunk"></a><br /> 
### MegaBinaryChunk
参考 : https://triple-underscore.github.io/RFC2616-ja.html#section-3.6.1<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chunkSize | [int64](#int64) |  | 全体 |
| lastChunk | [int64](#int64) |  | どこから始まるか |
| data | [bytes](#bytes) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.MegaStorage"></a><br /> 
### MegaStorage<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| meta | [MegaStorage.MetaEntry](#proskenion.MegaStorage.MetaEntry) | repeated |  |
| megaBinaryHash | [bytes](#bytes) |  | MerkleTree で管理 |<br /> 
<br /> 
<br /> 

<a name="proskenion.MegaStorage.MetaEntry"></a><br /> 
### MegaStorage.MetaEntry<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Object](#proskenion.Object) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.Object"></a><br /> 
### Object<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| boolean | [bool](#bool) |  |  |
| i32 | [int32](#int32) |  |  |
| i64 | [int64](#int64) |  |  |
| u32 | [uint32](#uint32) |  |  |
| u64 | [uint64](#uint64) |  |  |
| str | [string](#string) |  |  |
| data | [bytes](#bytes) |  |  |
| address | [string](#string) |  |  |
| sig | [Signature](#proskenion.Signature) |  |  |
| account | [Account](#proskenion.Account) |  |  |
| peer | [Peer](#proskenion.Peer) |  |  |
| list | [ObjectList](#proskenion.ObjectList) |  |  |
| dict | [ObjectDict](#proskenion.ObjectDict) |  |  |
| storage | [Storage](#proskenion.Storage) |  |  |
| megaStorage | [MegaStorage](#proskenion.MegaStorage) |  |  |
| command | [Command](#proskenion.Command) |  |  |
| transaction | [Transaction](#proskenion.Transaction) |  |  |
| block | [Block](#proskenion.Block) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ObjectDict"></a><br /> 
### ObjectDict<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dict | [ObjectDict.DictEntry](#proskenion.ObjectDict.DictEntry) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ObjectDict.DictEntry"></a><br /> 
### ObjectDict.DictEntry<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Object](#proskenion.Object) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ObjectList"></a><br /> 
### ObjectList<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [Object](#proskenion.Object) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.OrderBy"></a><br /> 
### OrderBy<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| order | [OrderCode](#proskenion.OrderCode) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.Peer"></a><br /> 
### Peer<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| peerId | [string](#string) |  |  |
| address | [string](#string) |  |  |
| publicKey | [bytes](#bytes) |  |  |
| active | [bool](#bool) |  |  |
| ban | [bool](#bool) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.RemovePublicKeys"></a><br /> 
### RemovePublicKeys
RemovePublicKey は TargetId で指定したアカウントの鍵を削除する。
TargetId は AccountId を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| publicKeys | [bytes](#bytes) | repeated | アカウントから削除する公開鍵のリスト。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.SetQuorum"></a><br /> 
### SetQuorum
SetAccountQuorum は TargetId アカウントの quorum を更新する。
TargetId は AccountId を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| quorum | [int32](#int32) |  | アカウントの権限を行使するために必要な最小の鍵の数。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.Signature"></a><br /> 
### Signature<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| publicKey | [bytes](#bytes) |  |  |
| signature | [bytes](#bytes) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.Storage"></a><br /> 
### Storage<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| object | [Storage.ObjectEntry](#proskenion.Storage.ObjectEntry) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.Storage.ObjectEntry"></a><br /> 
### Storage.ObjectEntry<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Object](#proskenion.Object) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.SuspendPeer"></a><br /> 
### SuspendPeer
SuspendPeer は Peer を 非active 状態にする。
TargetId は AccountId(PeerId) を指定する。
非active 状態の Peer は合意形成に参加しない。(Consign の対象にできない）<br /> 
<br /> 
<br /> 

<a name="proskenion.Transaction"></a><br /> 
### Transaction
Transaction は Client が送信する取引の内容を記述したものである。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [Transaction.Payload](#proskenion.Transaction.Payload) |  |  |
| signatures | [Signature](#proskenion.Signature) | repeated | Paylaod をコマンドの操作者達によって署名した Signature のリスト。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.Transaction.Payload"></a><br /> 
### Transaction.Payload<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| createdTime | [int64](#int64) |  | Transaction を生成した時間(UnixTime)。 |
| commands | [Command](#proskenion.Command) | repeated | Transaction が逐次実行するコマンド列。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.TransferBalance"></a><br /> 
### TransferBalance
Transfer Command は送金を行う。
targetId は 送金元の AccountId を示す。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| destAccountId | [string](#string) |  | 送金先の AccountId。 |
| balance | [int64](#int64) |  | 送金する balance の量。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.TransferObject"></a><br /> 
### TransferObject
TransferObject は Storage 内の key で指定された要素内の Object を送信する。（list or dict)
TargetId は WalletId を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | Storage 内の要素を指定するためのキー値。 |
| destAccountId | [string](#string) |  | 送信先の AccountId。 |
| object | [Object](#proskenion.Object) |  | 送信する Object の内容（存在しない場合は失敗する）。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.UpdateObject"></a><br /> 
### UpdateObject
UpdateObject は Storage 内の Object を更新する。
TargetId は WalletId を指定する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | Storage 内の要素を指定するためのキー値。 |
| object | [Object](#proskenion.Object) |  | 変更後の Object。 |<br /> 
<br /> 
<br /> 
 <br /> 

<a name="proskenion.ObjectCode"></a><br /> 
### ObjectCode<br /> 

| Name | Number | Description |
| ---- | ------ | ----------- |
| AnythingObjectCode | 0 |  |
| BoolObjectCode | 1 |  |
| Int32ObjectCode | 2 |  |
| Int64ObjectCode | 3 |  |
| Uint32ObjectCode | 4 |  |
| Uint64ObjectCode | 5 |  |
| StringObjectCode | 6 |  |
| BytesObjectCode | 7 |  |
| AddressObjectCode | 8 |  |
| SignatureObjectCode | 9 |  |
| AccountObjectCode | 10 |  |
| PeerObjectCode | 11 |  |
| ListObjectCode | 12 |  |
| DictObjectCode | 13 |  |
| StorageObjectCode | 14 |  |
| MegaStorageObjectCode | 15 |  |
| CommandObjectCode | 16 |  |
| TransactionObjectCode | 17 |  |
| BlockObjectCode | 18 |  |<br /> 
<br /> 
<a name="proskenion.OrderCode"></a><br /> 
### OrderCode<br /> 

| Name | Number | Description |
| ---- | ------ | ----------- |
| DESC | 0 |  |
| ASC | 1 |  |<br /> 

 <br /> 
 <br /> 
 <br /> 
<br /> 
<a name="prosl.proto"></a>
<p align="right"><a href="#top">Top</a></p><br /> 
## prosl.proto<br /> 
<br /> 
<a name="proskenion.AndFormula"></a><br /> 
### AndFormula<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.AndOperator"></a><br /> 
### AndOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.AssertOperator"></a><br /> 
### AssertOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.CastOperator"></a><br /> 
### CastOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| object | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.CommandOperator"></a><br /> 
### CommandOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| command_name | [string](#string) |  |  |
| params | [CommandOperator.ParamsEntry](#proskenion.CommandOperator.ParamsEntry) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.CommandOperator.ParamsEntry"></a><br /> 
### CommandOperator.ParamsEntry<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ConcatOperator"></a><br /> 
### ConcatOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ConditionalFormula"></a><br /> 
### ConditionalFormula
=== CodntionalFormula ====<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| or | [OrFormula](#proskenion.OrFormula) |  | || |
| and | [AndFormula](#proskenion.AndFormula) |  | &amp;&amp; |
| not | [NotFormula](#proskenion.NotFormula) |  | ! |
| eq | [EqFormula](#proskenion.EqFormula) |  | == |
| ne | [NeFormula](#proskenion.NeFormula) |  | != |
| gt | [GtFormula](#proskenion.GtFormula) |  | &gt; |
| ge | [GeFormula](#proskenion.GeFormula) |  | &gt;= |
| lt | [LtFormula](#proskenion.LtFormula) |  | &lt; |
| le | [LeFormula](#proskenion.LeFormula) |  | &lt;= |
| verifyOp | [VerifyOperator](#proskenion.VerifyOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.DivisionOperator"></a><br /> 
### DivisionOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.EachOperator"></a><br /> 
### EachOperator
Deprecated...<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |
| variableName | [string](#string) |  |  |
| do | [Prosl](#proskenion.Prosl) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ElifOperator"></a><br /> 
### ElifOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |
| prosl | [Prosl](#proskenion.Prosl) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ElseOperator"></a><br /> 
### ElseOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prosl | [Prosl](#proskenion.Prosl) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.EqFormula"></a><br /> 
### EqFormula<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ErrCatchOperator"></a><br /> 
### ErrCatchOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code | [ErrCode](#proskenion.ErrCode) |  |  |
| prosl | [Prosl](#proskenion.Prosl) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.GeFormula"></a><br /> 
### GeFormula<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.GtFormula"></a><br /> 
### GtFormula<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.IfOperator"></a><br /> 
### IfOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |
| prosl | [Prosl](#proskenion.Prosl) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.IndexedOperator"></a><br /> 
### IndexedOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [ValueOperator](#proskenion.ValueOperator) |  |  |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| index | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.IsDefinedOperator"></a><br /> 
### IsDefinedOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| variableName | [string](#string) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.LeFormula"></a><br /> 
### LeFormula<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.LenOperator"></a><br /> 
### LenOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ListComprehensionOperator"></a><br /> 
### ListComprehensionOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |
| variableName | [string](#string) |  |  |
| if | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |
| element | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ListOperator"></a><br /> 
### ListOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.LtFormula"></a><br /> 
### LtFormula<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.MapOperator"></a><br /> 
### MapOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [MapOperator.ObjectEntry](#proskenion.MapOperator.ObjectEntry) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.MapOperator.ObjectEntry"></a><br /> 
### MapOperator.ObjectEntry<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.MinusOperator"></a><br /> 
### MinusOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ModOperator"></a><br /> 
### ModOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.MultipleOperator"></a><br /> 
### MultipleOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.NeFormula"></a><br /> 
### NeFormula<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.NotFormula"></a><br /> 
### NotFormula<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.OrFormula"></a><br /> 
### OrFormula<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.OrOperator"></a><br /> 
### OrOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.PageRankOperator"></a><br /> 
### PageRankOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| storages | [ValueOperator](#proskenion.ValueOperator) |  | List Obejct and each object is Storage Object. Storage.Id is vertex id. toKey is Storage[toKey] = ObjectList&lt;AddressObject&gt; Allowed edges inputs Storage.Id -&gt; Storage[toKey]...<br /> 
Output : ObjectList&lt;StorageObject&gt; Storage has Id = &#34;Address/outStorageName&#34; and &#34;rank&#34; = rank. |
| toKey | [ValueOperator](#proskenion.ValueOperator) |  |  |
| outName | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.PlusOperator"></a><br /> 
### PlusOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.Prosl"></a><br /> 
### Prosl<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ProslOperator](#proskenion.ProslOperator) | repeated |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ProslOperator"></a><br /> 
### ProslOperator
=== ProslOperator ====<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| setOp | [SetOperator](#proskenion.SetOperator) |  |  |
| ifOp | [IfOperator](#proskenion.IfOperator) |  |  |
| elifOp | [ElifOperator](#proskenion.ElifOperator) |  |  |
| elseOp | [ElseOperator](#proskenion.ElseOperator) |  |  |
| errOp | [ErrCatchOperator](#proskenion.ErrCatchOperator) |  |  |
| requireOp | [RequireOperator](#proskenion.RequireOperator) |  |  |
| assertOp | [AssertOperator](#proskenion.AssertOperator) |  |  |
| returnOp | [ReturnOperator](#proskenion.ReturnOperator) |  |  |
| eachOp | [EachOperator](#proskenion.EachOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.QueryOperator"></a><br /> 
### QueryOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| authorizerId | [ValueOperator](#proskenion.ValueOperator) |  |  |
| select | [string](#string) |  |  |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| from | [ValueOperator](#proskenion.ValueOperator) |  |  |
| where | [ValueOperator](#proskenion.ValueOperator) |  |  |
| orderBy | [OrderBy](#proskenion.OrderBy) |  |  |
| limit | [int32](#int32) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.RequireOperator"></a><br /> 
### RequireOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ReturnOperator"></a><br /> 
### ReturnOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.SetOperator"></a><br /> 
### SetOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| variableName | [string](#string) |  |  |
| value | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.SliceOperator"></a><br /> 
### SliceOperator
return ListObeject[left, right) : left == nil: left is 0, right == nil: right is len(list).<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |
| left | [ValueOperator](#proskenion.ValueOperator) |  |  |
| right | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.SortOperator"></a><br /> 
### SortOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |
| orderBy | [OrderBy](#proskenion.OrderBy) |  |  |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| limit | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.StorageOperator"></a><br /> 
### StorageOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [MapOperator](#proskenion.MapOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.TxOperator"></a><br /> 
### TxOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| commands | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ValueOperator"></a><br /> 
### ValueOperator
=== ValueOperator ===<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| queryOp | [QueryOperator](#proskenion.QueryOperator) |  |  |
| txOp | [TxOperator](#proskenion.TxOperator) |  |  |
| cmdOp | [CommandOperator](#proskenion.CommandOperator) |  |  |
| storageOp | [StorageOperator](#proskenion.StorageOperator) |  |  |
| plusOp | [PlusOperator](#proskenion.PlusOperator) |  |  |
| minusOp | [MinusOperator](#proskenion.MinusOperator) |  |  |
| mulOp | [MultipleOperator](#proskenion.MultipleOperator) |  |  |
| divOp | [DivisionOperator](#proskenion.DivisionOperator) |  |  |
| modOp | [ModOperator](#proskenion.ModOperator) |  |  |
| orOp | [OrOperator](#proskenion.OrOperator) |  |  |
| andOp | [AndOperator](#proskenion.AndOperator) |  |  |
| xorOp | [XorOperator](#proskenion.XorOperator) |  |  |
| concatOp | [ConcatOperator](#proskenion.ConcatOperator) |  |  |
| valuedOp | [ValuedOperator](#proskenion.ValuedOperator) |  |  |
| indexedOp | [IndexedOperator](#proskenion.IndexedOperator) |  |  |
| variableOp | [VariableOperator](#proskenion.VariableOperator) |  |  |
| object | [Object](#proskenion.Object) |  |  |
| listOp | [ListOperator](#proskenion.ListOperator) |  |  |
| mapOp | [MapOperator](#proskenion.MapOperator) |  |  |
| castOp | [CastOperator](#proskenion.CastOperator) |  |  |
| listComprehensionOp | [ListComprehensionOperator](#proskenion.ListComprehensionOperator) |  |  |
| sortOp | [SortOperator](#proskenion.SortOperator) |  |  |
| sliceOp | [SliceOperator](#proskenion.SliceOperator) |  |  |
| isDefinedOp | [IsDefinedOperator](#proskenion.IsDefinedOperator) |  |  |
| verifyOp | [VerifyOperator](#proskenion.VerifyOperator) |  |  |
| pageRankOp | [PageRankOperator](#proskenion.PageRankOperator) |  |  |
| lenOp | [LenOperator](#proskenion.LenOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.ValuedOperator"></a><br /> 
### ValuedOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [ValueOperator](#proskenion.ValueOperator) |  |  |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| key | [string](#string) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.VariableOperator"></a><br /> 
### VariableOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| variableName | [string](#string) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.VerifyOperator"></a><br /> 
### VerifyOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sig | [ValueOperator](#proskenion.ValueOperator) |  |  |
| hash | [ValueOperator](#proskenion.ValueOperator) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.XorOperator"></a><br /> 
### XorOperator<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br /> 
<br /> 
<br /> 
 <br /> 

<a name="proskenion.ErrCode"></a><br /> 
### ErrCode<br /> 

| Name | Number | Description |
| ---- | ------ | ----------- |
| NoErr | 0 |  |
| Anything | 1 |  |
| Internal | 2 |  |
| Sentence | 3 |  |
| UnImplemented | 4 |  |
| Assertation | 5 |  |
| QueryVerify | 6 |  |
| QueryValidate | 7 |  |
| Type | 8 |  |
| NotEnoughArgument | 9 |  |
| FailedOperate | 10 |  |
| UnExpectedReturnValue | 11 |  |
| OutOfRange | 12 |  |
| Undefined | 13 |  |
| CastType | 14 |  |<br /> 

 <br /> 
 <br /> 
 <br /> 
<br /> 
<a name="query.proto"></a>
<p align="right"><a href="#top">Top</a></p><br /> 
## query.proto<br /> 
<br /> 
<a name="proskenion.Query"></a><br /> 
### Query
Query は Proskenion 上のデータを取得するためのフォーマットである。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [Query.Payload](#proskenion.Query.Payload) |  |  |
| signature | [Signature](#proskenion.Signature) |  | Payload を Query 発行者が署名したもの。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.Query.Payload"></a><br /> 
### Query.Payload<br /> 
<br /> 
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| authorizerId | [string](#string) |  | 誰の権限で Query を発行するかを AccountId で指定する。 |
| select | [string](#string) |  | 取得したい要素の名前を指定する。 |
| requstCode | [ObjectCode](#proskenion.ObjectCode) |  | 取得する Object の型を指定する。 |
| fromId | [string](#string) |  | 検索対象となる id を指定する。 |
| where | [string](#string) |  | TODO: fromId が範囲指定だった場合、取得した Object に filter をかける条件式を記述する。 |
| orderBy | [OrderBy](#proskenion.OrderBy) |  | fromId が範囲指定だった場合、取得したリストをソートするルールを指定する。 |
| limit | [int32](#int32) |  | fromId が範囲指定だった場合、取得したリストを何番目まで返すかを指定する。 |
| createdTime | [int64](#int64) |  | Query を発行した時間を指定する。 |<br /> 
<br /> 
<br /> 

<a name="proskenion.QueryResponse"></a><br /> 
### QueryResponse
QueryResponse は Read RPC の返り値である。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [Object](#proskenion.Object) |  | Query で取得したデータ。 |
| signature | [Signature](#proskenion.Signature) |  | Object を Query を実行した Peer が署名したもの。 |<br /> 
<br /> 
<br /> 
 <br /> 
 <br /> 
 <br /> 
 <br /> 
<br /> 
<a name="sync.proto"></a>
<p align="right"><a href="#top">Top</a></p><br /> 
## sync.proto<br /> 
<br /> 
<a name="proskenion.SyncRequest"></a><br /> 
### SyncRequest
SynRequest は取得したい BlockChain の先頭のブロックハッシュを渡す。
終了は io.EOF を用いる。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| blockHash | [bytes](#bytes) |  |  |<br /> 
<br /> 
<br /> 

<a name="proskenion.SyncResponse"></a><br /> 
### SyncResponse
SyncResponse は Block と Transaction の列を返す。
データベースのロック解除のために空を返す。
空を返されたら Request で再び続きから取得する。<br /> 

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block | [Block](#proskenion.Block) |  |  |
| transaction | [Transaction](#proskenion.Transaction) |  |  |<br /> 
<br /> 
<br /> 
 <br /> 
 <br /> 
 <br /> 

<a name="proskenion.Sync"></a><br /> 
### Sync
SyncGate は 同期を行うための通信<br /> 
| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Sync | [SyncRequest](#proskenion.SyncRequest) stream | [SyncResponse](#proskenion.SyncResponse) stream | Sync は同期したい側が正しいデータを持っている Peer に対して投げるリクエストである。<br /> 
InvalidArgument (code = 3) : One of following conditions: 1 ) Block hash is nil. 2 ) Block Verify failed. 3 ) Transaction is nil. 4 ) Transaction Verify failed. DeadlineExceeded (Code = 4) One fo following conditoins: 1 ) Timeout stream response. AlreadyExist (code = 6) : One of following conditions: 1 ) Block is already exist is blockchain. |<br /> 
 <br /> 
<br /> 
## Scalar Value Types<br /> 
| .proto Type | Notes | C++ Type | Java Type | Python Type |
| ----------- | ----- | -------- | --------- | ----------- |
| <a name="double" /> double |  | double | double | float |
| <a name="float" /> float |  | float | float | float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long |
| <a name="bool" /> bool |  | bool | boolean | boolean |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str |<br /> 
