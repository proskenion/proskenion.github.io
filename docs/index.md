# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [api.proto](#api.proto)
    - [TxResponse](#proskenion.TxResponse)
  
  
  
    - [API](#proskenion.API)
  

- [consensus.proto](#consensus.proto)
    - [ConsensusResponse](#proskenion.ConsensusResponse)
    - [PropagateBlockRequest](#proskenion.PropagateBlockRequest)
    - [PropagateBlockResponse](#proskenion.PropagateBlockResponse)
  
  
  
    - [Consensus](#proskenion.Consensus)
  

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
  
  
  

- [query.proto](#query.proto)
    - [Query](#proskenion.Query)
    - [Query.Payload](#proskenion.Query.Payload)
    - [QueryResponse](#proskenion.QueryResponse)
  
  
  
  

- [sync.proto](#sync.proto)
    - [SyncRequest](#proskenion.SyncRequest)
    - [SyncResponse](#proskenion.SyncResponse)
  
  
  
    - [Sync](#proskenion.Sync)
  

- [Scalar Value Types](#scalar-value-types)



<a name="api.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## api.proto



<a name="proskenion.TxResponse"></a>

### TxResponse
Error は GRPC Error Code で返す





 

 

 


<a name="proskenion.API"></a>

### API
TxGate は Client から Transaction を受け取る

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Write | [Transaction](#proskenion.Transaction) | [TxResponse](#proskenion.TxResponse) | Write は Transaction を受け付ける。 受け取った Transaction は ProposalTxQueue に挿入した後、他のPeerに伝搬する。<br />InvalidArgument (code = 3) : One of following conditions: 1 ) StatelessValidator で落ちる場合 AlreadyExist (code = 6) : One of following conditions: 1 ) 既に同じ Transaction を受け取っていた場合 |
| Read | [Query](#proskenion.Query) | [QueryResponse](#proskenion.QueryResponse) | Read は Query を受け付ける。 受け取った Query の規則に従ってデータを取得し Peer の署名を添付した QueryResponse を返す。<br />InvalidArgument (code = 3) : One of following conditions: 1 ) Verify で落ちる場合 2 ) Validate で落ちる場合 NotFound (code = 5) : One of following conditions: 1 ) 検索結果が見つからなかった場合 |

 



<a name="consensus.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## consensus.proto



<a name="proskenion.ConsensusResponse"></a>

### ConsensusResponse
Error は GRPC Error Code で返す






<a name="proskenion.PropagateBlockRequest"></a>

### PropagateBlockRequest
PropagateBlock において伝搬する側が送信するデータである。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block | [Block](#proskenion.Block) |  | 伝搬する Block。最初に Block を送信する。 |
| transaction | [Transaction](#proskenion.Transaction) |  | 伝搬する Block が持っている Transaction。Block を送信した後に順番に送信する。 |






<a name="proskenion.PropagateBlockResponse"></a>

### PropagateBlockResponse
PropagateBlock において伝搬される側が送信するデータである。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature | [Signature](#proskenion.Signature) |  | Block を正しく受け取ったことを伝搬する側に伝えるために署名を送信する。 |





 

 

 


<a name="proskenion.Consensus"></a>

### Consensus
ConsensusGate は合意形成に使用する rpc を定義する。
これを使用するのは合意形成に参加するPeerのみである。<br />

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| PropagateTx | [Transaction](#proskenion.Transaction) | [ConsensusResponse](#proskenion.ConsensusResponse) | PropagateTx は Client から受け取った Transaction を自分以外の Peer に伝搬させる。 Context には送信者の署名をつける。<br />InvalidArgument (code = 3) : One of following conditions: 1 ) StatelessValidator で落ちる場合 PermissionDenied (code = 7) : One of following conditions: 1 ) Context の 署名の主がPeerでない場合 |
| PropagateBlock | [PropagateBlockRequest](#proskenion.PropagateBlockRequest) stream | [PropagateBlockResponse](#proskenion.PropagateBlockResponse) stream | PropagateBlock は Commit する block と txList を自分以外の Peer に伝搬させる。 Context には送信者の署名をつける

InvalidArgument (code = 3) : One of following conditions: 1 ) Block is nil. 2 ) Block Verify failed. 3 ) Transaction is nil. 4 ) Transaction Verify failed. AlreadyExist (code = 6) : One of following conditions: 1 ) Block is already exist in block queue. PermissionDenied (code = 7) : One of following conditions: 1 ) Context の 署名の主がPeerでない場合 |

 



<a name="objects.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## objects.proto



<a name="proskenion.Account"></a>

### Account



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| accountId | [string](#string) |  |  |
| accountName | [string](#string) |  |  |
| publicKeys | [bytes](#bytes) | repeated |  |
| quorum | [int32](#int32) |  |  |
| balance | [int64](#int64) |  |  |
| delegatePeerId | [string](#string) |  |  |






<a name="proskenion.ActivatePeer"></a>

### ActivatePeer
ActivatePeer は Peer を active 状態にする。
TargetId は AccountId(PeerId) を指定する。
Active 状態の Peer は合意形成に参加できる。



<a name="proskenion.AddBalance"></a>

### AddBalance
AddBalance は targetId の balance を増やす。
TargetId は AccountId を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| balance | [int64](#int64) |  | 増やす balance の量。 |






<a name="proskenion.AddObject"></a>

### AddObject
AddObject は TargetId で指定した Storage に Object を追加する。（list or dict)
TargetId は WalletId を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | Storage 内の要素を指定するためのキー値。 |
| object | [Object](#proskenion.Object) |  | 指定した List Object に追加する Object。 |






<a name="proskenion.AddPeer"></a>

### AddPeer
AddPeer はネットワークに Peer を追加する。
TargetId は AccountId(PeerId) を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Peer にアクセスするためのグローバルアドレス。 |
| publicKey | [bytes](#bytes) |  | Peer を操作するための公開鍵。 |






<a name="proskenion.AddPublicKeys"></a>

### AddPublicKeys
AddPublicKey は TragetId で指定したアカウントに鍵を追加する。
TargetId は AccountId を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| publicKeys | [bytes](#bytes) | repeated | アカウントに登録する公開鍵のリスト。 |






<a name="proskenion.Address"></a>

### Address



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  |  |






<a name="proskenion.BanPeer"></a>

### BanPeer
BanPeer は Peer を使用禁止にする。
TargetId は AccountId(PeerId) を指定する。
Ban された Peer は金輪際合意形成/同期に参加できない。



<a name="proskenion.Block"></a>

### Block
Block の構造。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [Block.Payload](#proskenion.Block.Payload) |  |  |
| signature | [Signature](#proskenion.Signature) |  | Payload を現在のラウンドにおけるリーダーが署名したもの。 |






<a name="proskenion.Block.Payload"></a>

### Block.Payload



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| height | [int64](#int64) |  | 現在のBlockのHeight&#43;1。 |
| preBlockHash | [bytes](#bytes) |  | 現在の Block のハッシュ値。 |
| createdTime | [int64](#int64) |  | Blockを生成した時間(リーダーがProposalを生成した時間であり、Commitされた時間ではない)。 |
| wsvHash | [bytes](#bytes) |  | Block 実行後の WSV のルートハッシュ値。 |
| txHistoryHash | [bytes](#bytes) |  | Block 実行後の TxHistory のルートハッシュ値。 |
| txListHash | [bytes](#bytes) |  | Transaction の集合（列)のハッシュ値。 |
| round | [int32](#int32) |  | 現在の Round。 |






<a name="proskenion.CheckAndCommitProsl"></a>

### CheckAndCommitProsl
CheckAndCommitProsl は TargetId で指定した ProSL を検証して妥当であれば適用する。
TargetId は WalletId を指定する。
具体的には variables を引数列として渡して Update ProSL を実行し真を返した時、
新たな incentive or consensus or update アルゴリズムとして実際に適用する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| variables | [CheckAndCommitProsl.VariablesEntry](#proskenion.CheckAndCommitProsl.VariablesEntry) | repeated | Update ProSL を実行する際の引数列。 |






<a name="proskenion.CheckAndCommitProsl.VariablesEntry"></a>

### CheckAndCommitProsl.VariablesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Object](#proskenion.Object) |  |  |






<a name="proskenion.Command"></a>

### Command
================ Command ================
Proskenion を操作するためのプリミティブな命令。

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
| forceUpdateStorage | [ForceUpdateStorage](#proskenion.ForceUpdateStorage) |  |  |






<a name="proskenion.Consign"></a>

### Consign
Consign は Account と Peer を紐付ける
TargetId は AccountId を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| peerId | [string](#string) |  | アカウントが信頼する Peer の id。 |






<a name="proskenion.CreateAccount"></a>

### CreateAccount
CerateAccount は TargetId の アカウントの生成を行う。
TargetId には AccountId を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| publicKeys | [bytes](#bytes) | repeated | アカウントに登録する公開鍵のリスト。 |
| quorum | [int32](#int32) |  | アカウントの権限を行使するために必要な最小の鍵の数。 |






<a name="proskenion.CreateStorage"></a>

### CreateStorage
CreateStorage は定義された Storage を TargetId で指定されたアカウントで実体化する。
TargetId は WalletId を指定する。


<a name="proskenion.DefineStorage"></a>

### DefineStorage
DefineStorage は Storage を定義する。
TargetId は StorageId を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| storage | [Storage](#proskenion.Storage) |  | Storage の key とそのデフォルトの value。 |






<a name="proskenion.ForceUpdateStorage"></a>

### ForceUpdateStorage
ForceUpdateStorage は TargetId で指定した Storage を強制上書きする。
TargetId は WalletId を指定する。
ForceUpdateStorage は Validate で必ず false が返る。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| storage | [Storage](#proskenion.Storage) |  | 上書き後の Storage の定義。 |






<a name="proskenion.MegaBinaryChunk"></a>

### MegaBinaryChunk
参考 : https://triple-underscore.github.io/RFC2616-ja.html#section-3.6.1


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chunkSize | [int64](#int64) |  | 全体 |
| lastChunk | [int64](#int64) |  | どこから始まるか |
| data | [bytes](#bytes) |  |  |






<a name="proskenion.MegaStorage"></a>

### MegaStorage



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| meta | [MegaStorage.MetaEntry](#proskenion.MegaStorage.MetaEntry) | repeated |  |
| megaBinaryHash | [bytes](#bytes) |  | MerkleTree で管理 |






<a name="proskenion.MegaStorage.MetaEntry"></a>

### MegaStorage.MetaEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Object](#proskenion.Object) |  |  |






<a name="proskenion.Object"></a>

### Object



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
| block | [Block](#proskenion.Block) |  |  |






<a name="proskenion.ObjectDict"></a>

### ObjectDict



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dict | [ObjectDict.DictEntry](#proskenion.ObjectDict.DictEntry) | repeated |  |






<a name="proskenion.ObjectDict.DictEntry"></a>

### ObjectDict.DictEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Object](#proskenion.Object) |  |  |






<a name="proskenion.ObjectList"></a>

### ObjectList



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [Object](#proskenion.Object) | repeated |  |






<a name="proskenion.OrderBy"></a>

### OrderBy



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| order | [OrderCode](#proskenion.OrderCode) |  |  |






<a name="proskenion.Peer"></a>

### Peer



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| peerId | [string](#string) |  |  |
| address | [string](#string) |  |  |
| publicKey | [bytes](#bytes) |  |  |
| active | [bool](#bool) |  |  |
| ban | [bool](#bool) |  |  |






<a name="proskenion.RemovePublicKeys"></a>

### RemovePublicKeys
RemovePublicKey は TargetId で指定したアカウントの鍵を削除する。
TargetId は AccountId を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| publicKeys | [bytes](#bytes) | repeated | アカウントから削除する公開鍵のリスト。 |






<a name="proskenion.SetQuorum"></a>

### SetQuorum
SetAccountQuorum は TargetId アカウントの quorum を更新する。
TargetId は AccountId を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| quorum | [int32](#int32) |  | アカウントの権限を行使するために必要な最小の鍵の数。 |






<a name="proskenion.Signature"></a>

### Signature



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| publicKey | [bytes](#bytes) |  |  |
| signature | [bytes](#bytes) |  |  |






<a name="proskenion.Storage"></a>

### Storage



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| object | [Storage.ObjectEntry](#proskenion.Storage.ObjectEntry) | repeated |  |






<a name="proskenion.Storage.ObjectEntry"></a>

### Storage.ObjectEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Object](#proskenion.Object) |  |  |






<a name="proskenion.SuspendPeer"></a>

### SuspendPeer
SuspendPeer は Peer を 非active 状態にする。
TargetId は AccountId(PeerId) を指定する。
非active 状態の Peer は合意形成に参加しない。(Consign の対象にできない）






<a name="proskenion.Transaction"></a>

### Transaction
Transaction は Client が送信する取引の内容を記述したものである。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [Transaction.Payload](#proskenion.Transaction.Payload) |  |  |
| signatures | [Signature](#proskenion.Signature) | repeated | Paylaod をコマンドの操作者達によって署名した Signature のリスト。 |






<a name="proskenion.Transaction.Payload"></a>

### Transaction.Payload



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| createdTime | [int64](#int64) |  | Transaction を生成した時間(UnixTime)。 |
| commands | [Command](#proskenion.Command) | repeated | Transaction が逐次実行するコマンド列。 |






<a name="proskenion.TransferBalance"></a>

### TransferBalance
Transfer Command は送金を行う。
targetId は 送金元の AccountId を示す。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| destAccountId | [string](#string) |  | 送金先の AccountId。 |
| balance | [int64](#int64) |  | 送金する balance の量。 |






<a name="proskenion.TransferObject"></a>

### TransferObject
TransferObject は Storage 内の key で指定された要素内の Object を送信する。（list or dict)
TargetId は WalletId を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | Storage 内の要素を指定するためのキー値。 |
| destAccountId | [string](#string) |  | 送信先の AccountId。 |
| object | [Object](#proskenion.Object) |  | 送信する Object の内容（存在しない場合は失敗する）。 |






<a name="proskenion.UpdateObject"></a>

### UpdateObject
UpdateObject は Storage 内の Object を更新する。
TargetId は WalletId を指定する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | Storage 内の要素を指定するためのキー値。 |
| object | [Object](#proskenion.Object) |  | 変更後の Object。 |





 


<a name="proskenion.ObjectCode"></a>

### ObjectCode


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
| BlockObjectCode | 18 |  |



<a name="proskenion.OrderCode"></a>

### OrderCode


| Name | Number | Description |
| ---- | ------ | ----------- |
| DESC | 0 |  |
| ASC | 1 |  |


 

 

 



<a name="prosl.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## prosl.proto



<a name="proskenion.AndFormula"></a>

### AndFormula



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.AndOperator"></a>

### AndOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.AssertOperator"></a>

### AssertOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |






<a name="proskenion.CastOperator"></a>

### CastOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| object | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.CommandOperator"></a>

### CommandOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| command_name | [string](#string) |  |  |
| params | [CommandOperator.ParamsEntry](#proskenion.CommandOperator.ParamsEntry) | repeated |  |






<a name="proskenion.CommandOperator.ParamsEntry"></a>

### CommandOperator.ParamsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.ConcatOperator"></a>

### ConcatOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.ConditionalFormula"></a>

### ConditionalFormula
=== CodntionalFormula ====


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
| verifyOp | [VerifyOperator](#proskenion.VerifyOperator) |  |  |






<a name="proskenion.DivisionOperator"></a>

### DivisionOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.EachOperator"></a>

### EachOperator
Deprecated...


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |
| variableName | [string](#string) |  |  |
| do | [Prosl](#proskenion.Prosl) |  |  |






<a name="proskenion.ElifOperator"></a>

### ElifOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |
| prosl | [Prosl](#proskenion.Prosl) |  |  |






<a name="proskenion.ElseOperator"></a>

### ElseOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prosl | [Prosl](#proskenion.Prosl) |  |  |






<a name="proskenion.EqFormula"></a>

### EqFormula



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.ErrCatchOperator"></a>

### ErrCatchOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code | [ErrCode](#proskenion.ErrCode) |  |  |
| prosl | [Prosl](#proskenion.Prosl) |  |  |






<a name="proskenion.GeFormula"></a>

### GeFormula



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.GtFormula"></a>

### GtFormula



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.IfOperator"></a>

### IfOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |
| prosl | [Prosl](#proskenion.Prosl) |  |  |






<a name="proskenion.IndexedOperator"></a>

### IndexedOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [ValueOperator](#proskenion.ValueOperator) |  |  |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| index | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.IsDefinedOperator"></a>

### IsDefinedOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| variableName | [string](#string) |  |  |






<a name="proskenion.LeFormula"></a>

### LeFormula



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.LenOperator"></a>

### LenOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.ListComprehensionOperator"></a>

### ListComprehensionOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |
| variableName | [string](#string) |  |  |
| if | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |
| element | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.ListOperator"></a>

### ListOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.LtFormula"></a>

### LtFormula



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.MapOperator"></a>

### MapOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [MapOperator.ObjectEntry](#proskenion.MapOperator.ObjectEntry) | repeated |  |






<a name="proskenion.MapOperator.ObjectEntry"></a>

### MapOperator.ObjectEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.MinusOperator"></a>

### MinusOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.ModOperator"></a>

### ModOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.MultipleOperator"></a>

### MultipleOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.NeFormula"></a>

### NeFormula



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.NotFormula"></a>

### NotFormula



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.OrFormula"></a>

### OrFormula



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.OrOperator"></a>

### OrOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.PageRankOperator"></a>

### PageRankOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| storages | [ValueOperator](#proskenion.ValueOperator) |  | List Obejct and each object is Storage Object. Storage.Id is vertex id. toKey is Storage[toKey] = ObjectList&lt;AddressObject&gt; Allowed edges inputs Storage.Id -&gt; Storage[toKey]...

Output : ObjectList&lt;StorageObject&gt; Storage has Id = &#34;Address/outStorageName&#34; and &#34;rank&#34; = rank. |
| toKey | [ValueOperator](#proskenion.ValueOperator) |  |  |
| outName | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.PlusOperator"></a>

### PlusOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |






<a name="proskenion.Prosl"></a>

### Prosl



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ProslOperator](#proskenion.ProslOperator) | repeated |  |






<a name="proskenion.ProslOperator"></a>

### ProslOperator
=== ProslOperator ====


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
| eachOp | [EachOperator](#proskenion.EachOperator) |  |  |






<a name="proskenion.QueryOperator"></a>

### QueryOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| authorizerId | [ValueOperator](#proskenion.ValueOperator) |  |  |
| select | [string](#string) |  |  |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| from | [ValueOperator](#proskenion.ValueOperator) |  |  |
| where | [ValueOperator](#proskenion.ValueOperator) |  |  |
| orderBy | [OrderBy](#proskenion.OrderBy) |  |  |
| limit | [int32](#int32) |  |  |






<a name="proskenion.RequireOperator"></a>

### RequireOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ConditionalFormula](#proskenion.ConditionalFormula) |  |  |






<a name="proskenion.ReturnOperator"></a>

### ReturnOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| op | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.SetOperator"></a>

### SetOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| variableName | [string](#string) |  |  |
| value | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.SliceOperator"></a>

### SliceOperator
return ListObeject[left, right) : left == nil: left is 0, right == nil: right is len(list).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |
| left | [ValueOperator](#proskenion.ValueOperator) |  |  |
| right | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.SortOperator"></a>

### SortOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list | [ValueOperator](#proskenion.ValueOperator) |  |  |
| orderBy | [OrderBy](#proskenion.OrderBy) |  |  |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| limit | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.StorageOperator"></a>

### StorageOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [MapOperator](#proskenion.MapOperator) |  |  |






<a name="proskenion.TxOperator"></a>

### TxOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| commands | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.ValueOperator"></a>

### ValueOperator
=== ValueOperator ===


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
| lenOp | [LenOperator](#proskenion.LenOperator) |  |  |






<a name="proskenion.ValuedOperator"></a>

### ValuedOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [ValueOperator](#proskenion.ValueOperator) |  |  |
| type | [ObjectCode](#proskenion.ObjectCode) |  |  |
| key | [string](#string) |  |  |






<a name="proskenion.VariableOperator"></a>

### VariableOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| variableName | [string](#string) |  |  |






<a name="proskenion.VerifyOperator"></a>

### VerifyOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sig | [ValueOperator](#proskenion.ValueOperator) |  |  |
| hash | [ValueOperator](#proskenion.ValueOperator) |  |  |






<a name="proskenion.XorOperator"></a>

### XorOperator



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ops | [ValueOperator](#proskenion.ValueOperator) | repeated |  |





 


<a name="proskenion.ErrCode"></a>

### ErrCode


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
| CastType | 14 |  |


 

 

 



<a name="query.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## query.proto



<a name="proskenion.Query"></a>

### Query
Query は Proskenion 上のデータを取得するためのフォーマットである。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [Query.Payload](#proskenion.Query.Payload) |  |  |
| signature | [Signature](#proskenion.Signature) |  | Payload を Query 発行者が署名したもの。 |






<a name="proskenion.Query.Payload"></a>

### Query.Payload



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| authorizerId | [string](#string) |  | 誰の権限で Query を発行するかを AccountId で指定する。 |
| select | [string](#string) |  | 取得したい要素の名前を指定する。 |
| requstCode | [ObjectCode](#proskenion.ObjectCode) |  | 取得する Object の型を指定する。 |
| fromId | [string](#string) |  | 検索対象となる id を指定する。 |
| where | [string](#string) |  | TODO: fromId が範囲指定だった場合、取得した Object に filter をかける条件式を記述する。 |
| orderBy | [OrderBy](#proskenion.OrderBy) |  | fromId が範囲指定だった場合、取得したリストをソートするルールを指定する。 |
| limit | [int32](#int32) |  | fromId が範囲指定だった場合、取得したリストを何番目まで返すかを指定する。 |
| createdTime | [int64](#int64) |  | Query を発行した時間を指定する。 |






<a name="proskenion.QueryResponse"></a>

### QueryResponse
QueryResponse は Read RPC の返り値である。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [Object](#proskenion.Object) |  | Query で取得したデータ。 |
| signature | [Signature](#proskenion.Signature) |  | Object を Query を実行した Peer が署名したもの。 |





 

 

 

 



<a name="sync.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## sync.proto



<a name="proskenion.SyncRequest"></a>

### SyncRequest
SynRequest は取得したい BlockChain の先頭のブロックハッシュを渡す。
終了は io.EOF を用いる。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| blockHash | [bytes](#bytes) |  |  |






<a name="proskenion.SyncResponse"></a>

### SyncResponse
SyncResponse は Block と Transaction の列を返す。
データベースのロック解除のために空を返す。
空を返されたら Request で再び続きから取得する。

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block | [Block](#proskenion.Block) |  |  |
| transaction | [Transaction](#proskenion.Transaction) |  |  |





 

 

 


<a name="proskenion.Sync"></a>

### Sync
SyncGate は 同期を行うための通信

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Sync | [SyncRequest](#proskenion.SyncRequest) stream | [SyncResponse](#proskenion.SyncResponse) stream | Sync は同期したい側が正しいデータを持っている Peer に対して投げるリクエストである。<br />InvalidArgument (code = 3) : One of following conditions: 1 ) Block hash is nil. 2 ) Block Verify failed. 3 ) Transaction is nil. 4 ) Transaction Verify failed. DeadlineExceeded (Code = 4) One fo following conditoins: 1 ) Timeout stream response. AlreadyExist (code = 6) : One of following conditions: 1 ) Block is already exist is blockchain. |

 



## Scalar Value Types

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
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str |

