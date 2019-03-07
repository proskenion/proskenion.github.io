# Protocol Documentation<br />
<a name="top"></a><br />
<br />
## Table of Contents<br />
<br />
- [api.proto](#api.proto)<br />
    - [TxResponse](#proskenion.TxResponse)<br />
  <br />
  <br />
  <br />
    - [API](#proskenion.API)<br />
  <br />
<br />
- [consensus.proto](#consensus.proto)<br />
    - [ConsensusResponse](#proskenion.ConsensusResponse)<br />
    - [PropagateBlockRequest](#proskenion.PropagateBlockRequest)<br />
    - [PropagateBlockResponse](#proskenion.PropagateBlockResponse)<br />
  <br />
  <br />
  <br />
    - [Consensus](#proskenion.Consensus)<br />
  <br />
<br />
- [objects.proto](#objects.proto)<br />
    - [Account](#proskenion.Account)<br />
    - [ActivatePeer](#proskenion.ActivatePeer)<br />
    - [AddBalance](#proskenion.AddBalance)<br />
    - [AddObject](#proskenion.AddObject)<br />
    - [AddPeer](#proskenion.AddPeer)<br />
    - [AddPublicKeys](#proskenion.AddPublicKeys)<br />
    - [Address](#proskenion.Address)<br />
    - [BanPeer](#proskenion.BanPeer)<br />
    - [Block](#proskenion.Block)<br />
    - [Block.Payload](#proskenion.Block.Payload)<br />
    - [CheckAndCommitProsl](#proskenion.CheckAndCommitProsl)<br />
    - [CheckAndCommitProsl.VariablesEntry](#proskenion.CheckAndCommitProsl.VariablesEntry)<br />
    - [Command](#proskenion.Command)<br />
    - [Consign](#proskenion.Consign)<br />
    - [CreateAccount](#proskenion.CreateAccount)<br />
    - [CreateStorage](#proskenion.CreateStorage)<br />
    - [DefineStorage](#proskenion.DefineStorage)<br />
    - [ForceUpdateStorage](#proskenion.ForceUpdateStorage)<br />
    - [MegaBinaryChunk](#proskenion.MegaBinaryChunk)<br />
    - [MegaStorage](#proskenion.MegaStorage)<br />
    - [MegaStorage.MetaEntry](#proskenion.MegaStorage.MetaEntry)<br />
    - [Object](#proskenion.Object)<br />
    - [ObjectDict](#proskenion.ObjectDict)<br />
    - [ObjectDict.DictEntry](#proskenion.ObjectDict.DictEntry)<br />
    - [ObjectList](#proskenion.ObjectList)<br />
    - [OrderBy](#proskenion.OrderBy)<br />
    - [Peer](#proskenion.Peer)<br />
    - [RemovePublicKeys](#proskenion.RemovePublicKeys)<br />
    - [SetQuorum](#proskenion.SetQuorum)<br />
    - [Signature](#proskenion.Signature)<br />
    - [Storage](#proskenion.Storage)<br />
    - [Storage.ObjectEntry](#proskenion.Storage.ObjectEntry)<br />
    - [SuspendPeer](#proskenion.SuspendPeer)<br />
    - [Transaction](#proskenion.Transaction)<br />
    - [Transaction.Payload](#proskenion.Transaction.Payload)<br />
    - [TransferBalance](#proskenion.TransferBalance)<br />
    - [TransferObject](#proskenion.TransferObject)<br />
    - [UpdateObject](#proskenion.UpdateObject)<br />
  <br />
    - [ObjectCode](#proskenion.ObjectCode)<br />
    - [OrderCode](#proskenion.OrderCode)<br />
  <br />
  <br />
  <br />
<br />
- [prosl.proto](#prosl.proto)<br />
    - [AndFormula](#proskenion.AndFormula)<br />
    - [AndOperator](#proskenion.AndOperator)<br />
    - [AssertOperator](#proskenion.AssertOperator)<br />
    - [CastOperator](#proskenion.CastOperator)<br />
    - [CommandOperator](#proskenion.CommandOperator)<br />
    - [CommandOperator.ParamsEntry](#proskenion.CommandOperator.ParamsEntry)<br />
    - [ConcatOperator](#proskenion.ConcatOperator)<br />
    - [ConditionalFormula](#proskenion.ConditionalFormula)<br />
    - [DivisionOperator](#proskenion.DivisionOperator)<br />
    - [EachOperator](#proskenion.EachOperator)<br />
    - [ElifOperator](#proskenion.ElifOperator)<br />
    - [ElseOperator](#proskenion.ElseOperator)<br />
    - [EqFormula](#proskenion.EqFormula)<br />
    - [ErrCatchOperator](#proskenion.ErrCatchOperator)<br />
    - [GeFormula](#proskenion.GeFormula)<br />
    - [GtFormula](#proskenion.GtFormula)<br />
    - [IfOperator](#proskenion.IfOperator)<br />
    - [IndexedOperator](#proskenion.IndexedOperator)<br />
    - [IsDefinedOperator](#proskenion.IsDefinedOperator)<br />
    - [LeFormula](#proskenion.LeFormula)<br />
    - [LenOperator](#proskenion.LenOperator)<br />
    - [ListComprehensionOperator](#proskenion.ListComprehensionOperator)<br />
    - [ListOperator](#proskenion.ListOperator)<br />
    - [LtFormula](#proskenion.LtFormula)<br />
    - [MapOperator](#proskenion.MapOperator)<br />
    - [MapOperator.ObjectEntry](#proskenion.MapOperator.ObjectEntry)<br />
    - [MinusOperator](#proskenion.MinusOperator)<br />
    - [ModOperator](#proskenion.ModOperator)<br />
    - [MultipleOperator](#proskenion.MultipleOperator)<br />
    - [NeFormula](#proskenion.NeFormula)<br />
    - [NotFormula](#proskenion.NotFormula)<br />
    - [OrFormula](#proskenion.OrFormula)<br />
    - [OrOperator](#proskenion.OrOperator)<br />
    - [PageRankOperator](#proskenion.PageRankOperator)<br />
    - [PlusOperator](#proskenion.PlusOperator)<br />
    - [Prosl](#proskenion.Prosl)<br />
    - [ProslOperator](#proskenion.ProslOperator)<br />
    - [QueryOperator](#proskenion.QueryOperator)<br />
    - [RequireOperator](#proskenion.RequireOperator)<br />
    - [ReturnOperator](#proskenion.ReturnOperator)<br />
    - [SetOperator](#proskenion.SetOperator)<br />
    - [SliceOperator](#proskenion.SliceOperator)<br />
    - [SortOperator](#proskenion.SortOperator)<br />
    - [StorageOperator](#proskenion.StorageOperator)<br />
    - [TxOperator](#proskenion.TxOperator)<br />
    - [ValueOperator](#proskenion.ValueOperator)<br />
    - [ValuedOperator](#proskenion.ValuedOperator)<br />
    - [VariableOperator](#proskenion.VariableOperator)<br />
    - [VerifyOperator](#proskenion.VerifyOperator)<br />
    - [XorOperator](#proskenion.XorOperator)<br />
  <br />
    - [ErrCode](#proskenion.ErrCode)<br />
  <br />
  <br />
  <br />
<br />
- [query.proto](#query.proto)<br />
    - [Query](#proskenion.Query)<br />
    - [Query.Payload](#proskenion.Query.Payload)<br />
    - [QueryResponse](#proskenion.QueryResponse)<br />
  <br />
  <br />
  <br />
  <br />
<br />
- [sync.proto](#sync.proto)<br />
    - [SyncRequest](#proskenion.SyncRequest)<br />
    - [SyncResponse](#proskenion.SyncResponse)<br />
  <br />
  <br />
  <br />
    - [Sync](#proskenion.Sync)<br />
  <br />
<br />
- [Scalar Value Types](#scalar-value-types)<br />
<br />
<br />
<br />
<a name="api.proto"></a><br />
<p align="right"><a href="#top">Top</a></p><br />
<br />
## api.proto<br />
<br />
<br />
<br />
<a name="proskenion.TxResponse"></a><br />
<br />
### TxResponse<br />
Error は GRPC Error Code で返す<br />
<br />
<br />
<br />
<br />
<br />
 <br />
<br />
 <br />
<br />
 <br />
<br />
<br />
<a name="proskenion.API"></a><br />
<br />
### API<br />
TxGate は Client から Transaction を受け取る<br />
<br />
| Method Name | Request Type | Response Type | Description |<br />
| ----------- | ------------ | ------------- | ------------|<br />
| Write | [Transaction](#proskenion.Transaction) | [TxResponse](#proskenion.TxResponse) | Write は Transaction を受け付ける。 受け取った Transaction は ProposalTxQueue に挿入した後、他のPeerに伝搬する。<br />
<br />
InvalidArgument (code = 3) : One of following conditions: 1 ) StatelessValidator で落ちる場合 AlreadyExist (code = 6) : One of following conditions: 1 ) 既に同じ Transaction を受け取っていた場合 |<br />
| Read | [Query](#proskenion.Query) | [QueryResponse](#proskenion.QueryResponse) | Read は Query を受け付ける。 受け取った Query の規則に従ってデータを取得し Peer の署名を添付した QueryResponse を返す。<br />
<br />
InvalidArgument (code = 3) : One of following conditions: 1 ) Verify で落ちる場合 2 ) Validate で落ちる場合 NotFound (code = 5) : One of following conditions: 1 ) 検索結果が見つからなかった場合 |<br />
<br />
 <br />
<br />
<br />
<br />
<a name="consensus.proto"></a><br />
<p align="right"><a href="#top">Top</a></p><br />
<br />
## consensus.proto<br />
<br />
<br />
<br />
<a name="proskenion.ConsensusResponse"></a><br />
<br />
### ConsensusResponse<br />
Error は GRPC Error Code で返す<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.PropagateBlockRequest"></a><br />
<br />
### PropagateBlockRequest<br />
PropagateBlock において伝搬する側が送信するデータである。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| block | [Block](#proskenion.Block) |  | 伝搬する Block。最初に Block を送信する。 |<br />
| transaction | [Transaction](#proskenion.Transaction) |  | 伝搬する Block が持っている Transaction。Block を送信した後に順番に送信する。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.PropagateBlockResponse"></a><br />
<br />
### PropagateBlockResponse<br />
PropagateBlock において伝搬される側が送信するデータである。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| signature | [Signature](#proskenion.Signature) |  | Block を正しく受け取ったことを伝搬する側に伝えるために署名を送信する。 |<br />
<br />
<br />
<br />
<br />
<br />
 <br />
<br />
 <br />
<br />
 <br />
<br />
<br />
<a name="proskenion.Consensus"></a><br />
<br />
### Consensus<br />
ConsensusGate は合意形成に使用する rpc を定義する。<br />
これを使用するのは合意形成に参加するPeerのみである。<br />
<br />
| Method Name | Request Type | Response Type | Description |<br />
| ----------- | ------------ | ------------- | ------------|<br />
| PropagateTx | [Transaction](#proskenion.Transaction) | [ConsensusResponse](#proskenion.ConsensusResponse) | PropagateTx は Client から受け取った Transaction を自分以外の Peer に伝搬させる。 Context には送信者の署名をつける。<br />
<br />
InvalidArgument (code = 3) : One of following conditions: 1 ) StatelessValidator で落ちる場合 PermissionDenied (code = 7) : One of following conditions: 1 ) Context の 署名の主がPeerでない場合 |<br />
| PropagateBlock | [PropagateBlockRequest](#proskenion.PropagateBlockRequest) stream | [PropagateBlockResponse](#proskenion.PropagateBlockResponse) stream | PropagateBlock は Commit する block と txList を自分以外の Peer に伝搬させる。 Context には送信者の署名をつける<br />
<br />
InvalidArgument (code = 3) : One of following conditions: 1 ) Block is nil. 2 ) Block Verify failed. 3 ) Transaction is nil. 4 ) Transaction Verify failed. AlreadyExist (code = 6) : One of following conditions: 1 ) Block is already exist in block queue. PermissionDenied (code = 7) : One of following conditions: 1 ) Context の 署名の主がPeerでない場合 |<br />
<br />
 <br />
<br />
<br />
<br />
<a name="objects.proto"></a><br />
<p align="right"><a href="#top">Top</a></p><br />
<br />
## objects.proto<br />
<br />
<br />
<br />
<a name="proskenion.Account"></a><br />
<br />
### Account<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| accountId | [string](#string) |  |  |<br />
| accountName | [string](#string) |  |  |<br />
| publicKeys | [bytes](#bytes) | repeated |  |<br />
| quorum | [int32](#int32) |  |  |<br />
| balance | [int64](#int64) |  |  |<br />
| delegatePeerId | [string](#string) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ActivatePeer"></a><br />
<br />
### ActivatePeer<br />
ActivatePeer は Peer を active 状態にする。<br />
TargetId は AccountId(PeerId) を指定する。<br />
Active 状態の Peer は合意形成に参加できる。<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.AddBalance"></a><br />
<br />
### AddBalance<br />
AddBalance は targetId の balance を増やす。<br />
TargetId は AccountId を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| balance | [int64](#int64) |  | 増やす balance の量。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.AddObject"></a><br />
<br />
### AddObject<br />
AddObject は TargetId で指定した Storage に Object を追加する。（list or dict)<br />
TargetId は WalletId を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| key | [string](#string) |  | Storage 内の要素を指定するためのキー値。 |<br />
| object | [Object](#proskenion.Object) |  | 指定した List Object に追加する Object。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.AddPeer"></a><br />
<br />
### AddPeer<br />
AddPeer はネットワークに Peer を追加する。<br />
TargetId は AccountId(PeerId) を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| address | [string](#string) |  | Peer にアクセスするためのグローバルアドレス。 |<br />
| publicKey | [bytes](#bytes) |  | Peer を操作するための公開鍵。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.AddPublicKeys"></a><br />
<br />
### AddPublicKeys<br />
AddPublicKey は TragetId で指定したアカウントに鍵を追加する。<br />
TargetId は AccountId を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| publicKeys | [bytes](#bytes) | repeated | アカウントに登録する公開鍵のリスト。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Address"></a><br />
<br />
### Address<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| address | [string](#string) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.BanPeer"></a><br />
<br />
### BanPeer<br />
BanPeer は Peer を使用禁止にする。<br />
TargetId は AccountId(PeerId) を指定する。<br />
Ban された Peer は金輪際合意形成/同期に参加できない。<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Block"></a><br />
<br />
### Block<br />
Block の構造。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| payload | [Block.Payload](#proskenion.Block.Payload) |  |  |<br />
| signature | [Signature](#proskenion.Signature) |  | Payload を現在のラウンドにおけるリーダーが署名したもの。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Block.Payload"></a><br />
<br />
### Block.Payload<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| height | [int64](#int64) |  | 現在のBlockのHeight&#43;1。 |<br />
| preBlockHash | [bytes](#bytes) |  | 現在の Block のハッシュ値。 |<br />
| createdTime | [int64](#int64) |  | Blockを生成した時間(リーダーがProposalを生成した時間であり、Commitされた時間ではない)。 |<br />
| wsvHash | [bytes](#bytes) |  | Block 実行後の WSV のルートハッシュ値。 |<br />
| txHistoryHash | [bytes](#bytes) |  | Block 実行後の TxHistory のルートハッシュ値。 |<br />
| txListHash | [bytes](#bytes) |  | Transaction の集合（列)のハッシュ値。 |<br />
| round | [int32](#int32) |  | 現在の Round。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.CheckAndCommitProsl"></a><br />
<br />
### CheckAndCommitProsl<br />
CheckAndCommitProsl は TargetId で指定した ProSL を検証して妥当であれば適用する。<br />
TargetId は WalletId を指定する。<br />
具体的には variables を引数列として渡して Update ProSL を実行し真を返した時、<br />
新たな incentive or consensus or update アルゴリズムとして実際に適用する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| variables | [CheckAndCommitProsl.VariablesEntry](#proskenion.CheckAndCommitProsl.VariablesEntry) | repeated | Update ProSL を実行する際の引数列。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.CheckAndCommitProsl.VariablesEntry"></a><br />
<br />
### CheckAndCommitProsl.VariablesEntry<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| key | [string](#string) |  |  |<br />
| value | [Object](#proskenion.Object) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Command"></a><br />
<br />
### Command<br />
================ Command ================<br />
Proskenion を操作するためのプリミティブな命令。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| authorizerId | [string](#string) |  | 誰の権限で命令を実行するかを AccountId で指定する。 |<br />
| targetId | [string](#string) |  | どの対象に命令を実行するかを指定する。 |<br />
| createAccount | [CreateAccount](#proskenion.CreateAccount) |  |  |<br />
| addBalance | [AddBalance](#proskenion.AddBalance) |  |  |<br />
| transferBalance | [TransferBalance](#proskenion.TransferBalance) |  |  |<br />
| addPublicKeys | [AddPublicKeys](#proskenion.AddPublicKeys) |  |  |<br />
| removePublicKeys | [RemovePublicKeys](#proskenion.RemovePublicKeys) |  |  |<br />
| setQuorum | [SetQuorum](#proskenion.SetQuorum) |  |  |<br />
| defineStorage | [DefineStorage](#proskenion.DefineStorage) |  |  |<br />
| createStorage | [CreateStorage](#proskenion.CreateStorage) |  |  |<br />
| updateObject | [UpdateObject](#proskenion.UpdateObject) |  |  |<br />
| addObject | [AddObject](#proskenion.AddObject) |  |  |<br />
| transferObject | [TransferObject](#proskenion.TransferObject) |  |  |<br />
| addPeer | [AddPeer](#proskenion.AddPeer) |  |  |<br />
| activatePeer | [ActivatePeer](#proskenion.ActivatePeer) |  |  |<br />
| suspendPeer | [SuspendPeer](#proskenion.SuspendPeer) |  |  |<br />
| banPeer | [BanPeer](#proskenion.BanPeer) |  |  |<br />
| consign | [Consign](#proskenion.Consign) |  |  |<br />
| checkAndCommitProsl | [CheckAndCommitProsl](#proskenion.CheckAndCommitProsl) |  |  |<br />
| forceUpdateStorage | [ForceUpdateStorage](#proskenion.ForceUpdateStorage) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Consign"></a><br />
<br />
### Consign<br />
Consign は Account と Peer を紐付ける<br />
TargetId は AccountId を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| peerId | [string](#string) |  | アカウントが信頼する Peer の id。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.CreateAccount"></a><br />
<br />
### CreateAccount<br />
CerateAccount は TargetId の アカウントの生成を行う。<br />
TargetId には AccountId を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| publicKeys | [bytes](#bytes) | repeated | アカウントに登録する公開鍵のリスト。 |<br />
| quorum | [int32](#int32) |  | アカウントの権限を行使するために必要な最小の鍵の数。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.CreateStorage"></a><br />
<br />
### CreateStorage<br />
CreateStorage は定義された Storage を TargetId で指定されたアカウントで実体化する。<br />
TargetId は WalletId を指定する。<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.DefineStorage"></a><br />
<br />
### DefineStorage<br />
DefineStorage は Storage を定義する。<br />
TargetId は StorageId を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| storage | [Storage](#proskenion.Storage) |  | Storage の key とそのデフォルトの value。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ForceUpdateStorage"></a><br />
<br />
### ForceUpdateStorage<br />
ForceUpdateStorage は TargetId で指定した Storage を強制上書きする。<br />
TargetId は WalletId を指定する。<br />
ForceUpdateStorage は Validate で必ず false が返る。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| storage | [Storage](#proskenion.Storage) |  | 上書き後の Storage の定義。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.MegaBinaryChunk"></a><br />
<br />
### MegaBinaryChunk<br />
参考 : https://triple-underscore.github.io/RFC2616-ja.html#section-3.6.1<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| chunkSize | [int64](#int64) |  | 全体 |<br />
| lastChunk | [int64](#int64) |  | どこから始まるか |<br />
| data | [bytes](#bytes) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.MegaStorage"></a><br />
<br />
### MegaStorage<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| meta | [MegaStorage.MetaEntry](#proskenion.MegaStorage.MetaEntry) | repeated |  |<br />
| megaBinaryHash | [bytes](#bytes) |  | MerkleTree で管理 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.MegaStorage.MetaEntry"></a><br />
<br />
### MegaStorage.MetaEntry<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| key | [string](#string) |  |  |<br />
| value | [Object](#proskenion.Object) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Object"></a><br />
<br />
### Object<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |<br />
| boolean | [bool](#bool) |  |  |<br />
| i32 | [int32](#int32) |  |  |<br />
| i64 | [int64](#int64) |  |  |<br />
| u32 | [uint32](#uint32) |  |  |<br />
| u64 | [uint64](#uint64) |  |  |<br />
| str | [string](#string) |  |  |<br />
| data | [bytes](#bytes) |  |  |<br />
| address | [string](#string) |  |  |<br />
| sig | [Signature](#proskenion.Signature) |  |  |<br />
| account | [Account](#proskenion.Account) |  |  |<br />
| peer | [Peer](#proskenion.Peer) |  |  |<br />
| list | [ObjectList](#proskenion.ObjectList) |  |  |<br />
| dict | [ObjectDict](#proskenion.ObjectDict) |  |  |<br />
| storage | [Storage](#proskenion.Storage) |  |  |<br />
| megaStorage | [MegaStorage](#proskenion.MegaStorage) |  |  |<br />
| command | [Command](#proskenion.Command) |  |  |<br />
| transaction | [Transaction](#proskenion.Transaction) |  |  |<br />
| block | [Block](#proskenion.Block) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ObjectDict"></a><br />
<br />
### ObjectDict<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| dict | [ObjectDict.DictEntry](#proskenion.ObjectDict.DictEntry) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ObjectDict.DictEntry"></a><br />
<br />
### ObjectDict.DictEntry<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| key | [string](#string) |  |  |<br />
| value | [Object](#proskenion.Object) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ObjectList"></a><br />
<br />
### ObjectList<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| list | [Object](#proskenion.Object) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.OrderBy"></a><br />
<br />
### OrderBy<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| key | [string](#string) |  |  |<br />
| order | [OrderCode](#proskenion.OrderCode) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Peer"></a><br />
<br />
### Peer<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| peerId | [string](#string) |  |  |<br />
| address | [string](#string) |  |  |<br />
| publicKey | [bytes](#bytes) |  |  |<br />
| active | [bool](#bool) |  |  |<br />
| ban | [bool](#bool) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.RemovePublicKeys"></a><br />
<br />
### RemovePublicKeys<br />
RemovePublicKey は TargetId で指定したアカウントの鍵を削除する。<br />
TargetId は AccountId を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| publicKeys | [bytes](#bytes) | repeated | アカウントから削除する公開鍵のリスト。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.SetQuorum"></a><br />
<br />
### SetQuorum<br />
SetAccountQuorum は TargetId アカウントの quorum を更新する。<br />
TargetId は AccountId を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| quorum | [int32](#int32) |  | アカウントの権限を行使するために必要な最小の鍵の数。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Signature"></a><br />
<br />
### Signature<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| publicKey | [bytes](#bytes) |  |  |<br />
| signature | [bytes](#bytes) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Storage"></a><br />
<br />
### Storage<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| id | [string](#string) |  |  |<br />
| object | [Storage.ObjectEntry](#proskenion.Storage.ObjectEntry) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Storage.ObjectEntry"></a><br />
<br />
### Storage.ObjectEntry<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| key | [string](#string) |  |  |<br />
| value | [Object](#proskenion.Object) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.SuspendPeer"></a><br />
<br />
### SuspendPeer<br />
SuspendPeer は Peer を 非active 状態にする。<br />
TargetId は AccountId(PeerId) を指定する。<br />
非active 状態の Peer は合意形成に参加しない。(Consign の対象にできない）<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Transaction"></a><br />
<br />
### Transaction<br />
Transaction は Client が送信する取引の内容を記述したものである。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| payload | [Transaction.Payload](#proskenion.Transaction.Payload) |  |  |<br />
| signatures | [Signature](#proskenion.Signature) | repeated | Paylaod をコマンドの操作者達によって署名した Signature のリスト。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Transaction.Payload"></a><br />
<br />
### Transaction.Payload<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| createdTime | [int64](#int64) |  | Transaction を生成した時間(UnixTime)。 |<br />
| commands | [Command](#proskenion.Command) | repeated | Transaction が逐次実行するコマンド列。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.TransferBalance"></a><br />
<br />
### TransferBalance<br />
Transfer Command は送金を行う。<br />
targetId は 送金元の AccountId を示す。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| destAccountId | [string](#string) |  | 送金先の AccountId。 |<br />
| balance | [int64](#int64) |  | 送金する balance の量。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.TransferObject"></a><br />
<br />
### TransferObject<br />
TransferObject は Storage 内の key で指定された要素内の Object を送信する。（list or dict)<br />
TargetId は WalletId を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| key | [string](#string) |  | Storage 内の要素を指定するためのキー値。 |<br />
| destAccountId | [string](#string) |  | 送信先の AccountId。 |<br />
| object | [Object](#proskenion.Object) |  | 送信する Object の内容（存在しない場合は失敗する）。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.UpdateObject"></a><br />
<br />
### UpdateObject<br />
UpdateObject は Storage 内の Object を更新する。<br />
TargetId は WalletId を指定する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| key | [string](#string) |  | Storage 内の要素を指定するためのキー値。 |<br />
| object | [Object](#proskenion.Object) |  | 変更後の Object。 |<br />
<br />
<br />
<br />
<br />
<br />
 <br />
<br />
<br />
<a name="proskenion.ObjectCode"></a><br />
<br />
### ObjectCode<br />
<br />
<br />
| Name | Number | Description |<br />
| ---- | ------ | ----------- |<br />
| AnythingObjectCode | 0 |  |<br />
| BoolObjectCode | 1 |  |<br />
| Int32ObjectCode | 2 |  |<br />
| Int64ObjectCode | 3 |  |<br />
| Uint32ObjectCode | 4 |  |<br />
| Uint64ObjectCode | 5 |  |<br />
| StringObjectCode | 6 |  |<br />
| BytesObjectCode | 7 |  |<br />
| AddressObjectCode | 8 |  |<br />
| SignatureObjectCode | 9 |  |<br />
| AccountObjectCode | 10 |  |<br />
| PeerObjectCode | 11 |  |<br />
| ListObjectCode | 12 |  |<br />
| DictObjectCode | 13 |  |<br />
| StorageObjectCode | 14 |  |<br />
| MegaStorageObjectCode | 15 |  |<br />
| CommandObjectCode | 16 |  |<br />
| TransactionObjectCode | 17 |  |<br />
| BlockObjectCode | 18 |  |<br />
<br />
<br />
<br />
<a name="proskenion.OrderCode"></a><br />
<br />
### OrderCode<br />
<br />
<br />
| Name | Number | Description |<br />
| ---- | ------ | ----------- |<br />
| DESC | 0 |  |<br />
| ASC | 1 |  |<br />
<br />
<br />
 <br />
<br />
 <br />
<br />
 <br />
<br />
<br />
<br />
<a name="prosl.proto"></a><br />
<p align="right"><a href="#top">Top</a></p><br />
<br />
## prosl.proto<br />
<br />
<br />
<br />
<a name="proskenion.AndFormula"></a><br />
<br />
### AndFormula<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.AndOperator"></a><br />
<br />
### AndOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.AssertOperator"></a><br />
<br />
### AssertOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.CastOperator"></a><br />
<br />
### CastOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |<br />
| object | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.CommandOperator"></a><br />
<br />
### CommandOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| command_name | [string](#string) |  |  |<br />
| params | [CommandOperator.ParamsEntry](#proskenion.CommandOperator.ParamsEntry) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.CommandOperator.ParamsEntry"></a><br />
<br />
### CommandOperator.ParamsEntry<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| key | [string](#string) |  |  |<br />
| value | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ConcatOperator"></a><br />
<br />
### ConcatOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ConditionalFormula"></a><br />
<br />
### ConditionalFormula<br />
=== CodntionalFormula ====<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| or | [OrFormula](#proskenion.OrFormula) |  | || |<br />
| and | [AndFormula](#proskenion.AndFormula) |  | &amp;&amp; |<br />
| not | [NotFormula](#proskenion.NotFormula) |  | ! |<br />
| eq | [EqFormula](#proskenion.EqFormula) |  | == |<br />
| ne | [NeFormula](#proskenion.NeFormula) |  | != |<br />
| gt | [GtFormula](#proskenion.GtFormula) |  | &gt; |<br />
| ge | [GeFormula](#proskenion.GeFormula) |  | &gt;= |<br />
| lt | [LtFormula](#proskenion.LtFormula) |  | &lt; |<br />
| le | [LeFormula](#proskenion.LeFormula) |  | &lt;= |<br />
| verifyOp | [VerifyOperator](#proskenion.VerifyOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.DivisionOperator"></a><br />
<br />
### DivisionOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.EachOperator"></a><br />
<br />
### EachOperator<br />
Deprecated...<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| variableName | [string](#string) |  |  |<br />
| do | [Prosl](#proskenion.Prosl) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ElifOperator"></a><br />
<br />
### ElifOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |<br />
| prosl | [Prosl](#proskenion.Prosl) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ElseOperator"></a><br />
<br />
### ElseOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| prosl | [Prosl](#proskenion.Prosl) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.EqFormula"></a><br />
<br />
### EqFormula<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ErrCatchOperator"></a><br />
<br />
### ErrCatchOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| code | [ErrCode](#proskenion.ErrCode) |  |  |<br />
| prosl | [Prosl](#proskenion.Prosl) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.GeFormula"></a><br />
<br />
### GeFormula<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.GtFormula"></a><br />
<br />
### GtFormula<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.IfOperator"></a><br />
<br />
### IfOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |<br />
| prosl | [Prosl](#proskenion.Prosl) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.IndexedOperator"></a><br />
<br />
### IndexedOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| object | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |<br />
| index | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.IsDefinedOperator"></a><br />
<br />
### IsDefinedOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| variableName | [string](#string) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.LeFormula"></a><br />
<br />
### LeFormula<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.LenOperator"></a><br />
<br />
### LenOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ListComprehensionOperator"></a><br />
<br />
### ListComprehensionOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| variableName | [string](#string) |  |  |<br />
| if | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |<br />
| element | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ListOperator"></a><br />
<br />
### ListOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| object | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.LtFormula"></a><br />
<br />
### LtFormula<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.MapOperator"></a><br />
<br />
### MapOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| object | [MapOperator.ObjectEntry](#proskenion.MapOperator.ObjectEntry) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.MapOperator.ObjectEntry"></a><br />
<br />
### MapOperator.ObjectEntry<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| key | [string](#string) |  |  |<br />
| value | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.MinusOperator"></a><br />
<br />
### MinusOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ModOperator"></a><br />
<br />
### ModOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.MultipleOperator"></a><br />
<br />
### MultipleOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.NeFormula"></a><br />
<br />
### NeFormula<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.NotFormula"></a><br />
<br />
### NotFormula<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| op | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.OrFormula"></a><br />
<br />
### OrFormula<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.OrOperator"></a><br />
<br />
### OrOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.PageRankOperator"></a><br />
<br />
### PageRankOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| storages | [ValueOperator](#proskenion.ValueOperator) |  | List Obejct and each object is Storage Object. Storage.Id is vertex id. toKey is Storage[toKey] = ObjectList&lt;AddressObject&gt; Allowed edges inputs Storage.Id -&gt; Storage[toKey]...<br />
<br />
Output : ObjectList&lt;StorageObject&gt; Storage has Id = &#34;Address/outStorageName&#34; and &#34;rank&#34; = rank. |<br />
| toKey | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| outName | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.PlusOperator"></a><br />
<br />
### PlusOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Prosl"></a><br />
<br />
### Prosl<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ProslOperator](#proskenion.ProslOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ProslOperator"></a><br />
<br />
### ProslOperator<br />
=== ProslOperator ====<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| setOp | [SetOperator](#proskenion.SetOperator) |  |  |<br />
| ifOp | [IfOperator](#proskenion.IfOperator) |  |  |<br />
| elifOp | [ElifOperator](#proskenion.ElifOperator) |  |  |<br />
| elseOp | [ElseOperator](#proskenion.ElseOperator) |  |  |<br />
| errOp | [ErrCatchOperator](#proskenion.ErrCatchOperator) |  |  |<br />
| requireOp | [RequireOperator](#proskenion.RequireOperator) |  |  |<br />
| assertOp | [AssertOperator](#proskenion.AssertOperator) |  |  |<br />
| returnOp | [ReturnOperator](#proskenion.ReturnOperator) |  |  |<br />
| eachOp | [EachOperator](#proskenion.EachOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.QueryOperator"></a><br />
<br />
### QueryOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| authorizerId | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| select | [string](#string) |  |  |<br />
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |<br />
| from | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| where | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| orderBy | [OrderBy](#proskenion.OrderBy) |  |  |<br />
| limit | [int32](#int32) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.RequireOperator"></a><br />
<br />
### RequireOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ReturnOperator"></a><br />
<br />
### ReturnOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| op | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.SetOperator"></a><br />
<br />
### SetOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| variableName | [string](#string) |  |  |<br />
| value | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.SliceOperator"></a><br />
<br />
### SliceOperator<br />
return ListObeject[left, right) : left == nil: left is 0, right == nil: right is len(list).<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| left | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| right | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.SortOperator"></a><br />
<br />
### SortOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| orderBy | [OrderBy](#proskenion.OrderBy) |  |  |<br />
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |<br />
| limit | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.StorageOperator"></a><br />
<br />
### StorageOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| object | [MapOperator](#proskenion.MapOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.TxOperator"></a><br />
<br />
### TxOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| commands | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ValueOperator"></a><br />
<br />
### ValueOperator<br />
=== ValueOperator ===<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| queryOp | [QueryOperator](#proskenion.QueryOperator) |  |  |<br />
| txOp | [TxOperator](#proskenion.TxOperator) |  |  |<br />
| cmdOp | [CommandOperator](#proskenion.CommandOperator) |  |  |<br />
| storageOp | [StorageOperator](#proskenion.StorageOperator) |  |  |<br />
| plusOp | [PlusOperator](#proskenion.PlusOperator) |  |  |<br />
| minusOp | [MinusOperator](#proskenion.MinusOperator) |  |  |<br />
| mulOp | [MultipleOperator](#proskenion.MultipleOperator) |  |  |<br />
| divOp | [DivisionOperator](#proskenion.DivisionOperator) |  |  |<br />
| modOp | [ModOperator](#proskenion.ModOperator) |  |  |<br />
| orOp | [OrOperator](#proskenion.OrOperator) |  |  |<br />
| andOp | [AndOperator](#proskenion.AndOperator) |  |  |<br />
| xorOp | [XorOperator](#proskenion.XorOperator) |  |  |<br />
| concatOp | [ConcatOperator](#proskenion.ConcatOperator) |  |  |<br />
| valuedOp | [ValuedOperator](#proskenion.ValuedOperator) |  |  |<br />
| indexedOp | [IndexedOperator](#proskenion.IndexedOperator) |  |  |<br />
| variableOp | [VariableOperator](#proskenion.VariableOperator) |  |  |<br />
| object | [Object](#proskenion.Object) |  |  |<br />
| listOp | [ListOperator](#proskenion.ListOperator) |  |  |<br />
| mapOp | [MapOperator](#proskenion.MapOperator) |  |  |<br />
| castOp | [CastOperator](#proskenion.CastOperator) |  |  |<br />
| listComprehensionOp | [ListComprehensionOperator](#proskenion.ListComprehensionOperator) |  |  |<br />
| sortOp | [SortOperator](#proskenion.SortOperator) |  |  |<br />
| sliceOp | [SliceOperator](#proskenion.SliceOperator) |  |  |<br />
| isDefinedOp | [IsDefinedOperator](#proskenion.IsDefinedOperator) |  |  |<br />
| verifyOp | [VerifyOperator](#proskenion.VerifyOperator) |  |  |<br />
| pageRankOp | [PageRankOperator](#proskenion.PageRankOperator) |  |  |<br />
| lenOp | [LenOperator](#proskenion.LenOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.ValuedOperator"></a><br />
<br />
### ValuedOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| object | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |<br />
| key | [string](#string) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.VariableOperator"></a><br />
<br />
### VariableOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| variableName | [string](#string) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.VerifyOperator"></a><br />
<br />
### VerifyOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| sig | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
| hash | [ValueOperator](#proskenion.ValueOperator) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.XorOperator"></a><br />
<br />
### XorOperator<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |<br />
<br />
<br />
<br />
<br />
<br />
 <br />
<br />
<br />
<a name="proskenion.ErrCode"></a><br />
<br />
### ErrCode<br />
<br />
<br />
| Name | Number | Description |<br />
| ---- | ------ | ----------- |<br />
| NoErr | 0 |  |<br />
| Anything | 1 |  |<br />
| Internal | 2 |  |<br />
| Sentence | 3 |  |<br />
| UnImplemented | 4 |  |<br />
| Assertation | 5 |  |<br />
| QueryVerify | 6 |  |<br />
| QueryValidate | 7 |  |<br />
| Type | 8 |  |<br />
| NotEnoughArgument | 9 |  |<br />
| FailedOperate | 10 |  |<br />
| UnExpectedReturnValue | 11 |  |<br />
| OutOfRange | 12 |  |<br />
| Undefined | 13 |  |<br />
| CastType | 14 |  |<br />
<br />
<br />
 <br />
<br />
 <br />
<br />
 <br />
<br />
<br />
<br />
<a name="query.proto"></a><br />
<p align="right"><a href="#top">Top</a></p><br />
<br />
## query.proto<br />
<br />
<br />
<br />
<a name="proskenion.Query"></a><br />
<br />
### Query<br />
Query は Proskenion 上のデータを取得するためのフォーマットである。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| payload | [Query.Payload](#proskenion.Query.Payload) |  |  |<br />
| signature | [Signature](#proskenion.Signature) |  | Payload を Query 発行者が署名したもの。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.Query.Payload"></a><br />
<br />
### Query.Payload<br />
<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| authorizerId | [string](#string) |  | 誰の権限で Query を発行するかを AccountId で指定する。 |<br />
| select | [string](#string) |  | 取得したい要素の名前を指定する。 |<br />
| requstCode | [ObjectCode](#proskenion.ObjectCode) |  | 取得する Object の型を指定する。 |<br />
| fromId | [string](#string) |  | 検索対象となる id を指定する。 |<br />
| where | [string](#string) |  | TODO: fromId が範囲指定だった場合、取得した Object に filter をかける条件式を記述する。 |<br />
| orderBy | [OrderBy](#proskenion.OrderBy) |  | fromId が範囲指定だった場合、取得したリストをソートするルールを指定する。 |<br />
| limit | [int32](#int32) |  | fromId が範囲指定だった場合、取得したリストを何番目まで返すかを指定する。 |<br />
| createdTime | [int64](#int64) |  | Query を発行した時間を指定する。 |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.QueryResponse"></a><br />
<br />
### QueryResponse<br />
QueryResponse は Read RPC の返り値である。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| object | [Object](#proskenion.Object) |  | Query で取得したデータ。 |<br />
| signature | [Signature](#proskenion.Signature) |  | Object を Query を実行した Peer が署名したもの。 |<br />
<br />
<br />
<br />
<br />
<br />
 <br />
<br />
 <br />
<br />
 <br />
<br />
 <br />
<br />
<br />
<br />
<a name="sync.proto"></a><br />
<p align="right"><a href="#top">Top</a></p><br />
<br />
## sync.proto<br />
<br />
<br />
<br />
<a name="proskenion.SyncRequest"></a><br />
<br />
### SyncRequest<br />
SynRequest は取得したい BlockChain の先頭のブロックハッシュを渡す。<br />
終了は io.EOF を用いる。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| blockHash | [bytes](#bytes) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
<br />
<a name="proskenion.SyncResponse"></a><br />
<br />
### SyncResponse<br />
SyncResponse は Block と Transaction の列を返す。<br />
データベースのロック解除のために空を返す。<br />
空を返されたら Request で再び続きから取得する。<br />
<br />
<br />
| Field | Type | Label | Description |<br />
| ----- | ---- | ----- | ----------- |<br />
| block | [Block](#proskenion.Block) |  |  |<br />
| transaction | [Transaction](#proskenion.Transaction) |  |  |<br />
<br />
<br />
<br />
<br />
<br />
 <br />
<br />
 <br />
<br />
 <br />
<br />
<br />
<a name="proskenion.Sync"></a><br />
<br />
### Sync<br />
SyncGate は 同期を行うための通信<br />
<br />
| Method Name | Request Type | Response Type | Description |<br />
| ----------- | ------------ | ------------- | ------------|<br />
| Sync | [SyncRequest](#proskenion.SyncRequest) stream | [SyncResponse](#proskenion.SyncResponse) stream | Sync は同期したい側が正しいデータを持っている Peer に対して投げるリクエストである。<br />
<br />
InvalidArgument (code = 3) : One of following conditions: 1 ) Block hash is nil. 2 ) Block Verify failed. 3 ) Transaction is nil. 4 ) Transaction Verify failed. DeadlineExceeded (Code = 4) One fo following conditoins: 1 ) Timeout stream response. AlreadyExist (code = 6) : One of following conditions: 1 ) Block is already exist is blockchain. |<br />
<br />
 <br />
<br />
<br />
<br />
## Scalar Value Types<br />
<br />
| .proto Type | Notes | C++ Type | Java Type | Python Type |<br />
| ----------- | ----- | -------- | --------- | ----------- |<br />
| <a name="double" /> double |  | double | double | float |<br />
| <a name="float" /> float |  | float | float | float |<br />
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int |<br />
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long |<br />
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long |<br />
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long |<br />
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int |<br />
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long |<br />
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int |<br />
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long |<br />
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int |<br />
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long |<br />
| <a name="bool" /> bool |  | bool | boolean | boolean |<br />
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode |<br />
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str |<br />
<br />
