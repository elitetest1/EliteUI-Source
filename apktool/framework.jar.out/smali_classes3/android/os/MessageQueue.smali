.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$MatchDeliverableMessages;,
        Landroid/os/MessageQueue$MatchHandlerWhatAndObject;,
        Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;,
        Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;,
        Landroid/os/MessageQueue$MatchHandler;,
        Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;,
        Landroid/os/MessageQueue$MatchHandlerAndObject;,
        Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;,
        Landroid/os/MessageQueue$MatchAllMessages;,
        Landroid/os/MessageQueue$MatchAllFutureMessages;,
        Landroid/os/MessageQueue$TimedParkStateNode;,
        Landroid/os/MessageQueue$StateNode;,
        Landroid/os/MessageQueue$StackNode;,
        Landroid/os/MessageQueue$MessageCounts;,
        Landroid/os/MessageQueue$MessageCompare;,
        Landroid/os/MessageQueue$MessageNode;,
        Landroid/os/MessageQueue$IdleHandler;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$MatchBarrierToken;,
        Landroid/os/MessageQueue$StackNodeType;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEBUG_LEVEL_HIGH:I = 0x2

.field private static final blacklist DEBUG_LEVEL_LOW:I = 0x0

.field private static final blacklist DEBUG_LEVEL_MID:I = 0x1

.field private static final blacklist DEBUG_PRODUCT_NO_SHIP:I = 0x1

.field private static final blacklist DEBUG_PRODUCT_SHIP:I = 0x0

.field private static final blacklist NOT_INITIALIZED:I = -0x1

.field private static final blacklist STACK_NODE_ACTIVE:I = 0x1

.field private static final blacklist STACK_NODE_MESSAGE:I = 0x0

.field private static final blacklist STACK_NODE_PARKED:I = 0x2

.field private static final blacklist STACK_NODE_TIMEDPARK:I = 0x3

.field private static final blacklist TAG_C:Ljava/lang/String; = "ConcurrentMessageQueue"

.field private static final blacklist TAG_L:Ljava/lang/String; = "LegacyMessageQueue"

.field private static final blacklist TRACE:Z = false

.field private static blacklist debugLevel:I = -0x1

.field private static blacklist mIsMainThread:Z = false

.field private static blacklist mIsSystemUI:Z = false

.field private static final blacklist mMessagesDelivered:Ljava/util/concurrent/atomic/AtomicLong;

.field private static blacklist sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean; = null

.field private static final blacklist sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sNextInsertSeq:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sQuitting:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sStackStateActive:Landroid/os/MessageQueue$StateNode;

.field private static final blacklist sStackStateParked:Landroid/os/MessageQueue$StateNode;

.field private static final blacklist sState:Ljava/lang/invoke/VarHandle;

.field private static blacklist shipBuild:I = -0x1


# instance fields
.field private blacklist mAsyncMessageCount:I

.field private final blacklist mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlocked:Z

.field private final blacklist mDrainCompleted:Ljava/util/concurrent/locks/Condition;

.field private final blacklist mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private greylist-max-o mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFileDescriptorRecordsLock:Ljava/lang/Object;

.field private final greylist mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdleHandlersLock:Ljava/lang/Object;

.field private blacklist mLast:Landroid/os/Message;

.field private final blacklist mMatchAllFutureMessages:Landroid/os/MessageQueue$MatchAllFutureMessages;

.field private final blacklist mMatchAllMessages:Landroid/os/MessageQueue$MatchAllMessages;

.field private final blacklist mMatchDeliverableMessages:Landroid/os/MessageQueue$MatchDeliverableMessages;

.field private final blacklist mMatchHandler:Landroid/os/MessageQueue$MatchHandler;

.field private final blacklist mMatchHandlerAndObject:Landroid/os/MessageQueue$MatchHandlerAndObject;

.field private final blacklist mMatchHandlerAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

.field private final blacklist mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

.field private final blacklist mMatchHandlerRunnableAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

.field private final blacklist mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

.field private final blacklist mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

.field private final blacklist mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

.field private blacklist mMessageDirectlyQueued:Z

.field greylist mMessages:Landroid/os/Message;

.field private greylist mNextBarrierToken:I

.field private final blacklist mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile blacklist mNextFrontInsertSeqValue:J

.field private volatile blacklist mNextInsertSeqValue:J

.field private blacklist mNextIsDrainingStack:Z

.field private blacklist mNextPollTimeoutMillis:I

.field private greylist-max-o mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private final blacklist mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPtr:J

.field private final greylist mQuitAllowed:Z

.field private greylist-max-o mQuitting:Z

.field private blacklist mQuittingValue:Z

.field private final blacklist mRemainBarriers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

.field private volatile blacklist mStateValue:Landroid/os/MessageQueue$StackNode;

.field private final blacklist mThreadName:Ljava/lang/String;

.field private final blacklist mTid:J

.field private final blacklist mUseConcurrent:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisDebugableForSystemUI()Z
    .locals 1

    invoke-static {}, Landroid/os/MessageQueue;->isDebugableForSystemUI()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    const-string v0, "VarHandle lookup failed with exception: "

    const-string v1, "ConcurrentMessageQueue"

    const-class v2, Landroid/os/MessageQueue;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v3, Landroid/os/MessageQueue;->mMessagesDelivered:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Landroid/os/MessageQueue$StateNode;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/os/MessageQueue$StateNode;-><init>(I)V

    sput-object v3, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    new-instance v3, Landroid/os/MessageQueue$StateNode;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/os/MessageQueue$StateNode;-><init>(I)V

    sput-object v3, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    const-string/jumbo v4, "mStateValue"

    const-class v5, Landroid/os/MessageQueue$StackNode;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v3

    sput-object v3, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    const-string/jumbo v4, "mNextInsertSeqValue"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v4

    sput-object v4, Landroid/os/MessageQueue;->sNextInsertSeq:Ljava/lang/invoke/VarHandle;

    const-string/jumbo v4, "mNextFrontInsertSeqValue"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v3

    sput-object v3, Landroid/os/MessageQueue;->sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    const-string/jumbo v4, "mQuittingValue"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mRemainBarriers:Ljava/util/Map;

    new-instance v0, Landroid/os/MessageQueue$MatchDeliverableMessages;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchDeliverableMessages;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchDeliverableMessages:Landroid/os/MessageQueue$MatchDeliverableMessages;

    new-instance v0, Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerWhatAndObject;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    new-instance v0, Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    new-instance v0, Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    new-instance v0, Landroid/os/MessageQueue$MatchHandler;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandler;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandler:Landroid/os/MessageQueue$MatchHandler;

    new-instance v0, Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

    new-instance v0, Landroid/os/MessageQueue$MatchHandlerAndObject;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerAndObject;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObject:Landroid/os/MessageQueue$MatchHandlerAndObject;

    new-instance v0, Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

    new-instance v0, Landroid/os/MessageQueue$MatchAllMessages;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchAllMessages;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchAllMessages:Landroid/os/MessageQueue$MatchAllMessages;

    new-instance v0, Landroid/os/MessageQueue$MatchAllFutureMessages;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchAllFutureMessages;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchAllFutureMessages:Landroid/os/MessageQueue$MatchAllFutureMessages;

    new-instance v0, Landroid/os/MessageQueue$TimedParkStateNode;

    invoke-direct {v0}, Landroid/os/MessageQueue$TimedParkStateNode;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    sget-object v0, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    iput-object v0, p0, Landroid/os/MessageQueue;->mStateValue:Landroid/os/MessageQueue$StackNode;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/MessageQueue;->mNextInsertSeqValue:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/os/MessageQueue;->mNextFrontInsertSeqValue:J

    new-instance v0, Landroid/os/MessageQueue$MessageCounts;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MessageCounts;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuittingValue:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/os/MessageQueue;->mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    invoke-static {}, Landroid/os/MessageQueue;->initIsProcessAllowedToUseConcurrent()V

    sget-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/os/MessageQueue;->mTid:J

    sget-boolean p0, Landroid/os/MessageQueue;->mIsSystemUI:Z

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    if-ne p0, p1, :cond_0

    sput-boolean v2, Landroid/os/MessageQueue;->mIsMainThread:Z

    :cond_0
    return-void
.end method

.method private blacklist addIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist addIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist addOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 1

    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist addOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist decAndTraceMessageCount()V
    .locals 1

    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    return-void
.end method

.method private greylist-max-r dispatchEvents(II)I
    .locals 5

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    if-nez v2, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    iget v1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    and-int/2addr p2, v1

    if-nez p2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    iget-object v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    iget v4, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    if-nez v2, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    iget v1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    and-int/2addr p2, v1

    if-nez p2, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    iget-object v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    iget v4, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    iget-object v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v3, v0, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result p2

    if-eqz p2, :cond_5

    or-int/lit8 p2, p2, 0x4

    :cond_5
    if-eq p2, v1, :cond_9

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_6

    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_6

    iget v1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v1, v4, :cond_6

    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-nez p2, :cond_6

    iget-object p0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_6
    monitor-exit v0

    return p2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_7
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_8

    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8

    iget v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v0, v4, :cond_8

    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-nez p2, :cond_8

    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_8
    monitor-exit p0

    return p2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_9
    return p2

    :catchall_3
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p1
.end method

.method private greylist-max-o dispose()V
    .locals 5

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    :cond_0
    return-void
.end method

.method private blacklist drainStack(Landroid/os/MessageQueue$StackNode;)V
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/MessageQueue$MessageNode;

    invoke-virtual {p1}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->insertIntoPriorityQueue(Landroid/os/MessageQueue$MessageNode;)V

    :cond_0
    iget-object v0, p1, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    const/4 v1, 0x0

    iput-object v1, p1, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;",
            "Landroid/util/Printer;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "I)I"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageQueue$MessageNode;

    invoke-static {v2}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    if-eqz p4, :cond_0

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p4, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, p5, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private blacklist dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;",
            "Landroid/util/proto/ProtoOutputStream;",
            ")I"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    invoke-static {v0}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v0

    const-wide v1, 0x20b00000001L

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private blacklist enqueueMessageConcurrent(Landroid/os/Message;J)Z
    .locals 1

    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageUnchecked(Landroid/os/Message;J)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " This message is already in use."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist enqueueMessageLegacy(Landroid/os/Message;J)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " sending message to a Handler on a dead thread"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p3, "LegacyMessageQueue"

    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    monitor-exit p0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    iput-wide p2, p1, Landroid/os/Message;->when:J

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_d

    iget-wide v3, v0, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->messageQueueTailTracking()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iget-wide v6, v4, Landroid/os/Message;->when:J

    cmp-long v4, p2, v6

    if-ltz v4, :cond_4

    if-eqz v3, :cond_3

    iget p2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    if-nez p2, :cond_3

    move v1, v2

    :cond_3
    iput-object v5, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object p2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iput-object p1, p2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_7

    :cond_4
    :goto_1
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v4, :cond_7

    iget-wide v5, v4, Landroid/os/Message;->when:J

    cmp-long v5, p2, v5

    if-gez v5, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v4}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v1

    :cond_6
    move-object v0, v4

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v4, :cond_8

    iput-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_8
    iput-object v4, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_5

    :cond_9
    :goto_3
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v4, :cond_c

    iget-wide v6, v4, Landroid/os/Message;->when:J

    cmp-long v6, p2, v6

    if-gez v6, :cond_a

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v4}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v1

    :cond_b
    move-object v0, v4

    goto :goto_3

    :cond_c
    :goto_4
    iput-object v4, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v5, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :goto_5
    move v1, v3

    goto :goto_7

    :cond_d
    :goto_6
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-nez v0, :cond_e

    iput-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_e
    :goto_7
    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result p1

    if-eqz p1, :cond_f

    iget p1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_f
    if-eqz v1, :cond_10

    iget-wide p1, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {p1, p2}, Landroid/os/MessageQueue;->nativeWake(J)V

    :cond_10
    monitor-exit p0

    return v2

    :cond_11
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " This message is already in use."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist enqueueMessageUnchecked(Landroid/os/Message;J)Z
    .locals 8

    sget-object v0, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " sending message to a Handler on a dead thread"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p2, "ConcurrentMessageQueue"

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroid/os/Message;->recycleUnchecked()V

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/MessageQueue;->sNextInsertSeq:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, v2, v3}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;J)J

    move-result-wide v4

    add-long/2addr v4, v2

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/os/MessageQueue;->sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;

    const-wide/16 v4, -0x1

    invoke-polymorphic {v0, p0, v4, v5}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;J)J

    move-result-wide v4

    sub-long/2addr v4, v2

    :goto_0
    new-instance v0, Landroid/os/MessageQueue$MessageNode;

    invoke-direct {v0, p1, v4, v5}, Landroid/os/MessageQueue$MessageNode;-><init>(Landroid/os/Message;J)V

    iput-wide p2, p1, Landroid/os/Message;->when:J

    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    if-ne p1, p0, :cond_3

    invoke-virtual {v0}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->insertIntoPriorityQueue(Landroid/os/MessageQueue$MessageNode;)V

    iget-boolean p1, p0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    if-nez p1, :cond_2

    iput-boolean p2, p0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    iget-wide p0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {p0, p1}, Landroid/os/MessageQueue;->nativeWake(J)V

    :cond_2
    return p2

    :cond_3
    sget-object p1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {p1, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object p3

    iput-object p3, v0, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    invoke-virtual {p3}, Landroid/os/MessageQueue$StackNode;->getNodeType()I

    move-result v2

    if-eq v2, p2, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v4, 0x3

    if-eq v2, v4, :cond_8

    move-object v2, p3

    check-cast v2, Landroid/os/MessageQueue$MessageNode;

    iget-object v5, v2, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    iput-object v5, v0, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    iget-object v5, v0, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    invoke-virtual {v5}, Landroid/os/MessageQueue$StateNode;->getNodeType()I

    move-result v5

    if-lt v5, v3, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    if-ne v5, v4, :cond_5

    iget-object v4, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget-wide v4, v4, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    invoke-virtual {v0}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    iget-boolean v4, v2, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    if-nez v4, :cond_5

    move v4, p2

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    iget-boolean v2, v2, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    if-nez v2, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v2, p2

    :goto_4
    iput-boolean v2, v0, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    goto :goto_7

    :cond_8
    move-object v2, p3

    check-cast v2, Landroid/os/MessageQueue$StateNode;

    iput-object v2, v0, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    iget-object v2, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget-wide v2, v2, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    invoke-virtual {v0}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    move v4, p2

    goto :goto_5

    :cond_9
    move v4, v1

    :goto_5
    iput-boolean v4, v0, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    move v3, p2

    goto :goto_7

    :cond_a
    move-object v2, p3

    check-cast v2, Landroid/os/MessageQueue$StateNode;

    iput-object v2, v0, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    iput-boolean p2, v0, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    move v3, p2

    goto :goto_6

    :cond_b
    move-object v2, p3

    check-cast v2, Landroid/os/MessageQueue$StateNode;

    iput-object v2, v0, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    iput-boolean p2, v0, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    move v3, v1

    :goto_6
    move v4, v3

    :goto_7
    invoke-polymorphic {p1, p0, p3, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StackNode;Landroid/os/MessageQueue$MessageNode;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v3, :cond_d

    if-eqz v4, :cond_c

    iget-wide p0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {p0, p1}, Landroid/os/MessageQueue;->nativeWake(J)V

    goto :goto_8

    :cond_c
    iget-object p0, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {p0}, Landroid/os/MessageQueue$MessageCounts;->incrementQueued()V

    :cond_d
    :goto_8
    return p2
.end method

.method private blacklist findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z
    .locals 12

    invoke-direct/range {p0 .. p8}, Landroid/os/MessageQueue;->stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v10

    iget-object v1, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/os/MessageQueue;->priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v11

    invoke-static {}, Landroid/os/MessageQueue;->isDebugableForSystemUI()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v10, :cond_0

    if-nez v11, :cond_0

    move-object/from16 v8, p7

    instance-of v1, v8, Landroid/os/MessageQueue$MatchBarrierToken;

    if-eqz v1, :cond_1

    const-string v1, "ConcurrentMessageQueue"

    const-string v2, "@@@### /// IN mPriorityQueue / foundInStack TRUE && foundInQueue IS FALSE"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/os/MessageQueue;->priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v0

    or-int/2addr v0, v11

    if-nez v10, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist getDebugLevel()I
    .locals 3

    sget v0, Landroid/os/MessageQueue;->debugLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "ro.debug_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "0x494d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    sput v0, Landroid/os/MessageQueue;->debugLevel:I

    goto :goto_1

    :cond_2
    const-string v1, "0x4948"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    sput v0, Landroid/os/MessageQueue;->debugLevel:I

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    sput v0, Landroid/os/MessageQueue;->debugLevel:I

    :cond_4
    :goto_1
    sget v0, Landroid/os/MessageQueue;->debugLevel:I

    return v0
.end method

.method private blacklist getStateNode(Landroid/os/MessageQueue$StackNode;)Landroid/os/MessageQueue$StateNode;
    .locals 0

    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Landroid/os/MessageQueue$MessageNode;

    iget-object p0, p1, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    return-object p0

    :cond_0
    check-cast p1, Landroid/os/MessageQueue$StateNode;

    return-object p1
.end method

.method private blacklist hasEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist hasEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;)Z
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandler:Landroid/os/MessageQueue$MatchHandler;

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    const/4 v8, 0x0

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist incAndTraceMessageCount(Landroid/os/Message;J)V
    .locals 4

    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->mSendingThreadName:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->mEventId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/PerfettoTrace;->getFlowId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    const-string/jumbo v1, "message_queue_send"

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace;->instant(Landroid/os/PerfettoTrace$Category;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->mEventId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->setFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    const-wide/16 v1, 0x7d4

    invoke-virtual {v0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginNested(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    const-wide/16 v1, 0x2

    iget-object p0, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->what:I

    int-to-long v0, p1

    const-wide/16 v2, 0x3

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->endNested()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->endProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    return-void
.end method

.method private static blacklist initIsProcessAllowedToUseConcurrent()V
    .locals 5

    sget-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->messageQueueForceLegacy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->forceConcurrentMessageQueue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "org.robolectric.Robolectric"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    return-void

    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v2, "test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    return-void

    :cond_6
    invoke-static {}, Landroid/os/MessageQueue;->isDebuggable()Z

    move-result v3

    const-string v4, "com.android.systemui"

    if-eqz v3, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "com.android.systemui:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/MessageQueue;->mIsSystemUI:Z

    return-void
.end method

.method private blacklist insertIntoPriorityQueue(Landroid/os/MessageQueue$MessageNode;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/MessageQueue$MessageNode;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static blacklist isDebugableForSystemUI()Z
    .locals 1

    invoke-static {}, Landroid/os/MessageQueue;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/MessageQueue;->mIsSystemUI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/MessageQueue;->mIsMainThread:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isDebuggable()Z
    .locals 2

    invoke-static {}, Landroid/os/MessageQueue;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/MessageQueue;->getDebugLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isIdleConcurrent()Z
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchDeliverableMessages:Landroid/os/MessageQueue$MatchDeliverableMessages;

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    iget-object p0, v0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :try_start_0
    iget-object p0, v0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/MessageQueue$MessageNode;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object p0, v2

    :goto_0
    iget-object v3, v0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    iget-object v0, v0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    :catch_1
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v3

    cmp-long p0, v3, v5

    if-lez p0, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v2

    cmp-long p0, v2, v5

    if-gtz p0, :cond_5

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isIdleLegacy()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist isPollingConcurrent()Z
    .locals 2

    sget-object v0, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPollingLegacy()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o isPollingLocked()Z
    .locals 2

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist isShipBuild()Z
    .locals 3

    sget v0, Landroid/os/MessageQueue;->shipBuild:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput v0, Landroid/os/MessageQueue;->shipBuild:I

    :cond_0
    sget v0, Landroid/os/MessageQueue;->shipBuild:I

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;)",
            "Landroid/os/MessageQueue$MessageNode;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/MessageQueue$MessageNode;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist legacyPeekOrPoll(Z)Landroid/os/Message;
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_2

    :goto_0
    iget-object v4, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/Message;->isAsynchronous()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    if-eqz v2, :cond_8

    if-eqz p1, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long p1, v0, v5

    if-ltz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    :cond_4
    if-eqz v4, :cond_5

    iget-object p1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, v4, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object p1, v4, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez p1, :cond_6

    iput-object v4, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_3

    :cond_5
    iget-object p1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object p1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez p1, :cond_6

    iput-object v3, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_6
    :goto_3
    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->markInUse()V

    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_7
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    monitor-exit p0

    return-object v2

    :cond_8
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static blacklist makeHeapdump()V
    .locals 6

    const-string v0, "ConcurrentMessageQueue"

    const-string v1, "@@@### GET HEAPDUMP FOR BARRIER : "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/log/core/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BARRIER"

    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s_%d_%s.hprof"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@@@### Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@@@### heapDumpFilePath= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", canWrite= "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeInit()J
.end method

.method private static native greylist-max-o nativeIsPolling(J)Z
.end method

.method private native greylist nativePollOnce(JI)V
.end method

.method private static native greylist-max-o nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native greylist-max-o nativeWake(J)V
.end method

.method private blacklist nextConcurrent()Landroid/os/Message;
    .locals 10

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    const/4 v4, -0x1

    :goto_0
    iget v5, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :cond_1
    iput-boolean v2, p0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    iget v5, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    invoke-direct {p0, v0, v1, v5}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    invoke-direct {p0, v2, v2}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/os/Message;->markInUse()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    return-object v5

    :cond_2
    sget-object v5, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v5, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v3

    :cond_3
    iget-object v5, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v5

    if-gez v4, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v4, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_4
    :goto_1
    if-gtz v4, :cond_5

    monitor-exit v5

    goto :goto_0

    :cond_5
    iget-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v6, :cond_6

    const/4 v6, 0x4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    :cond_6
    iget-object v6, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_8

    iget-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v7, v6, v5

    aput-object v3, v6, v5

    :try_start_1
    invoke-interface {v7}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v6

    const-string v8, "ConcurrentMessageQueue"

    const-string v9, "IdleHandler threw exception"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v2

    :goto_3
    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iget-object v8, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v6

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    iput v2, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    move v4, v2

    goto/16 :goto_0

    :goto_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private blacklist nextLegacy()Landroid/os/Message;
    .locals 17

    move-object/from16 v1, p0

    iget-wide v2, v1, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    move v7, v5

    move v0, v6

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :cond_1
    invoke-direct {v1, v2, v3, v0}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, v1, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v0, :cond_4

    iget-object v10, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v10, :cond_4

    :goto_1
    iget-object v10, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/os/Message;->isAsynchronous()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v10

    goto :goto_1

    :cond_3
    :goto_2
    move-object/from16 v16, v10

    move-object v10, v0

    move-object/from16 v0, v16

    goto :goto_3

    :cond_4
    move-object v10, v4

    :goto_3
    const/4 v11, 0x1

    if-eqz v0, :cond_9

    iget-wide v12, v0, Landroid/os/Message;->when:J

    cmp-long v12, v8, v12

    if-gez v12, :cond_5

    iget-wide v12, v0, Landroid/os/Message;->when:J

    sub-long/2addr v12, v8

    const-wide/32 v14, 0x7fffffff

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v0, v12

    goto :goto_5

    :cond_5
    iput-boolean v6, v1, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v10, :cond_6

    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v10, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object v2, v10, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v2, :cond_7

    iput-object v10, v1, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_4

    :cond_6
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v1, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v2, :cond_7

    iput-object v4, v1, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_7
    :goto_4
    iput-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->markInUse()V

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v1, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    sub-int/2addr v2, v11

    iput v2, v1, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_8
    invoke-direct {v1}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    monitor-exit p0

    return-object v0

    :cond_9
    move v0, v5

    :goto_5
    iget-boolean v10, v1, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v10, :cond_a

    invoke-direct {v1}, Landroid/os/MessageQueue;->dispose()V

    monitor-exit p0

    return-object v4

    :cond_a
    if-gez v7, :cond_c

    iget-object v10, v1, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_b

    iget-wide v12, v10, Landroid/os/Message;->when:J

    cmp-long v8, v8, v12

    if-gez v8, :cond_c

    :cond_b
    iget-object v7, v1, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_c
    if-gtz v7, :cond_d

    iput-boolean v11, v1, Landroid/os/MessageQueue;->mBlocked:Z

    monitor-exit p0

    goto/16 :goto_0

    :cond_d
    iget-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v0, :cond_e

    const/4 v0, 0x4

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    :cond_e
    iget-object v0, v1, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v8, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v8, v6

    :goto_6
    if-ge v8, v7, :cond_10

    iget-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v9, v0, v8

    aput-object v4, v0, v8

    :try_start_1
    invoke-interface {v9}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    const-string v10, "LegacyMessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    :goto_7
    if-nez v0, :cond_f

    monitor-enter p0

    :try_start_2
    iget-object v0, v1, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_f
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_10
    move v0, v6

    move v7, v0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private blacklist nextMessage(ZZ)Landroid/os/Message;
    .locals 9

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->swapAndSetStackStateActive()Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->drainStack(Landroid/os/MessageQueue$StackNode;)V

    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    iget-object v1, p0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v1, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v1

    iget-object v2, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/os/MessageQueue;->iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/MessageQueue$MessageNode;->isBarrier()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_1

    if-nez p2, :cond_3

    invoke-virtual {v2}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v6

    cmp-long v1, v3, v6

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    move-object v2, v5

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1, v2}, Landroid/os/MessageQueue;->pickEarliestNode(Landroid/os/MessageQueue$MessageNode;Landroid/os/MessageQueue$MessageNode;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez p2, :cond_3

    invoke-virtual {v2}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v6

    cmp-long v1, v3, v6

    if-ltz v1, :cond_1

    :cond_3
    :goto_1
    move-object v1, v5

    goto :goto_2

    :cond_4
    move-object v1, v5

    move-object v2, v1

    :goto_2
    sget-object v6, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    if-nez v2, :cond_7

    if-nez v1, :cond_5

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    sget-object v0, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v7

    cmp-long v1, v7, v3

    if-lez v1, :cond_6

    sub-long/2addr v7, v3

    const-wide/32 v0, 0x7fffffff

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    goto :goto_3

    :cond_6
    iput v0, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    :goto_3
    iget-object v0, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget v1, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    int-to-long v7, v1

    add-long/2addr v3, v7

    iput-wide v3, v0, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    iget-object v0, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    goto :goto_4

    :cond_7
    move-object v0, v6

    :goto_4
    sget-object v1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p0, v6, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StateNode;Landroid/os/MessageQueue$StateNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {v0}, Landroid/os/MessageQueue$MessageCounts;->clearCounts()V

    if-eqz v2, :cond_9

    if-nez p1, :cond_8

    invoke-direct {p0, v2}, Landroid/os/MessageQueue;->removeFromPriorityQueue(Landroid/os/MessageQueue$MessageNode;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-static {v2}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v5
.end method

.method private blacklist pickEarliestNode(Landroid/os/MessageQueue$MessageNode;Landroid/os/MessageQueue$MessageNode;)Landroid/os/MessageQueue$MessageNode;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/MessageQueue$MessageNode;->compareTo(Landroid/os/MessageQueue$MessageNode;)I

    move-result p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    return-object p1

    :cond_1
    return-object p2
.end method

.method private greylist-max-o postSyncBarrier(J)I
    .locals 7

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/os/MessageQueue;->mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/os/MessageQueue;->isDebugableForSystemUI()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ConcurrentMessageQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@@@### postSyncBarrier token : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v1, p1, p2}, Landroid/os/MessageQueue;->enqueueMessageUnchecked(Landroid/os/Message;J)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "ConcurrentMessageQueue"

    const-string p1, "Unexpected error while adding sync barrier!"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-static {}, Landroid/os/MessageQueue;->isDebugableForSystemUI()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/os/MessageQueue;->mRemainBarriers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v0

    :cond_3
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    iput-wide p1, v1, Landroid/os/Message;->when:J

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->messageQueueTailTracking()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    if-eqz v2, :cond_4

    iget-wide v4, v2, Landroid/os/Message;->when:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_4

    iget-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iput-object v1, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    monitor-exit p0

    return v0

    :cond_4
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_5

    :goto_0
    if-eqz v2, :cond_5

    iget-wide v4, v2, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_5

    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_6
    if-eqz v3, :cond_7

    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_7
    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist postSyncBarrierConcurrent()I
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result p0

    return p0
.end method

.method private blacklist postSyncBarrierLegacy()I
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result p0

    return p0
.end method

.method private blacklist printPriorityQueueNodes()V
    .locals 5
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    iget-object p0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "* Dump priority queue"

    const-string v1, "ConcurrentMessageQueue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "** MessageNode what: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    iget v3, v3, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " when "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    iget-wide v3, v3, Landroid/os/Message;->when:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Landroid/os/MessageQueue$MessageNode;->mInsertSeq:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist printRemainBarrierInfo()V
    .locals 7

    iget-object p0, p0, Landroid/os/MessageQueue;->mRemainBarriers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@@@### ///  REMAIN BARRIER msg / token : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConcurrentMessageQueue"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "@@@### /// at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "J",
            "Landroid/os/MessageQueue$MessageCompare;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/os/MessageQueue$MessageNode;

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-wide/from16 v11, p6

    move-object/from16 v5, p8

    invoke-virtual/range {v5 .. v12}, Landroid/os/MessageQueue$MessageCompare;->compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p9, :cond_9

    invoke-static {}, Landroid/os/MessageQueue;->isDebugableForSystemUI()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct/range {p0 .. p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    invoke-static {}, Landroid/os/MessageQueue;->isDebugableForSystemUI()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v17, v1

    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_1
    invoke-static {}, Landroid/os/MessageQueue;->isDebugableForSystemUI()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v6}, Landroid/os/MessageQueue$MessageNode;->isBarrier()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "@@@### // SOMETHING WRONG??? queue : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ConcurrentMessageQueue"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "!!!@@@### /// msg : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "!!!@@@### // msg.mMessage == compareMsgNode.mMessage : "

    const-string v11, "!!!@@@### // queue.contains(compareMsgNode) : "

    const-string v12, "!!!@@@### /// compareMsgNode.mMessage.arg1 : "

    const-string v13, "!!!@@@### /// compareMsgNode.mMessage.targe : "

    const-string v14, "!!!@@@### /// compareMsgNode.mMessage.when : "

    const-string v15, "!!!@@@### /// compareMsgNode.mMessage : "

    const-string v2, "!!!@@@### /// compareMsgNode.mInsertSeq : "

    const/16 v16, 0x1

    const-string v4, "!!!@@@### /// compareMsgNode : "

    move-object/from16 v17, v1

    const-string v1, "!!!@@@### // queue.contains(msg) : "

    move/from16 v18, v3

    const-string v3, "!!!@@@### /// msg.mMessage.arg1 : "

    move-object/from16 v19, v5

    const-string v5, "!!!@@@### /// msg.mMessage.target : "

    move-object/from16 v20, v8

    const-string v8, "!!!@@@### /// msg.mMessage.when : "

    move/from16 v21, v9

    const-string v9, "!!!@@@### /// msg.mMessage : "

    move-object/from16 v22, v10

    const-string v10, "!!!@@@### /// msg.mInsertSeq : "

    if-eqz v21, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v23, v1

    move-object/from16 v1, v21

    check-cast v1, Landroid/os/MessageQueue$MessageNode;

    if-ne v1, v6, :cond_3

    const-string v0, "!!!@@@### /// ===== msg is in Q ====="

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v11

    iget-wide v10, v6, Landroid/os/MessageQueue$MessageNode;->mInsertSeq:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v1, Landroid/os/MessageQueue$MessageNode;->mInsertSeq:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    iget-wide v8, v2, Landroid/os/Message;->when:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    iget-wide v8, v2, Landroid/os/Message;->when:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    iget-object v2, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    iget-object v2, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v11, v21

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v1

    if-ne v3, v1, :cond_2

    move/from16 v4, v16

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto/16 :goto_4

    :cond_3
    move-object/from16 v1, v17

    move/from16 v3, v18

    move-object/from16 v5, v19

    move-object/from16 v8, v20

    goto/16 :goto_1

    :cond_4
    move-object/from16 v21, v11

    const-string v11, "!!!@@@### /// ===== msg is NOT in Q? ====="

    invoke-static {v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v12

    move-object v10, v13

    iget-wide v12, v6, Landroid/os/MessageQueue$MessageNode;->mInsertSeq:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v8

    iget-wide v11, v8, Landroid/os/Message;->when:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v5

    iget-object v5, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    iget v3, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageQueue$MessageNode;

    const-string v3, "!!!@@@### /// ===== messages in Q ======"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Landroid/os/MessageQueue$MessageNode;->mInsertSeq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    iget-wide v3, v3, Landroid/os/Message;->when:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    iget v3, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v11, v21

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v1

    if-ne v3, v1, :cond_5

    move/from16 v4, v16

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/log/core/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BARRIER"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s_%d_%s.trace"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/os/MessageQueue;->printRemainBarrierInfo()V

    invoke-static {}, Landroid/os/MessageQueue;->makeHeapdump()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BARRIER was not removed!!! but retrying succeed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v17, v1

    move/from16 v18, v3

    :goto_5
    move/from16 v3, v18

    goto :goto_6

    :cond_9
    const/16 v16, 0x1

    return v16

    :cond_a
    move-object/from16 v17, v1

    :goto_6
    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    return v3
.end method

.method private blacklist removeAllFutureMessages()V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchAllFutureMessages:Landroid/os/MessageQueue$MatchAllFutureMessages;

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    return-void
.end method

.method private greylist-max-o removeAllFutureMessagesLocked()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_5

    iget-wide v3, v2, Landroid/os/Message;->when:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    return-void

    :cond_0
    :goto_0
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_4

    const/4 v0, 0x0

    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :goto_1
    iget-object v0, v3, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_2
    invoke-virtual {v3}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist removeAllMessages()V
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchAllMessages:Landroid/os/MessageQueue$MatchAllMessages;

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    return-void
.end method

.method private greylist-max-o removeAllMessagesLocked()V
    .locals 3

    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    return-void
.end method

.method private blacklist removeCallbacksAndMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObject:Landroid/os/MessageQueue$MatchHandlerAndObject;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    return-void
.end method

.method private blacklist removeCallbacksAndMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p2, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_6

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    if-eqz p2, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_6

    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_3

    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist removeEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    return-void
.end method

.method private blacklist removeEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    return-void
.end method

.method private blacklist removeEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_6

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_6

    if-eqz p3, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_3

    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist removeEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_6

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_6

    if-eqz p3, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_3

    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist removeFromPriorityQueue(Landroid/os/MessageQueue$MessageNode;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/os/MessageQueue$MessageNode;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist removeIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist removeIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist removeMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    return-void
.end method

.method private blacklist removeMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    return-void
.end method

.method private blacklist removeMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_6

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_6

    if-eqz p3, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_6

    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_3

    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist removeMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_6

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_6

    if-eqz p3, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_6

    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_3

    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist removeOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;)V
    .locals 3

    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist removeOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist removeSyncBarrierConcurrent(I)V
    .locals 11

    new-instance v7, Landroid/os/MessageQueue$MatchBarrierToken;

    invoke-direct {v7, p1}, Landroid/os/MessageQueue$MatchBarrierToken;-><init>(I)V

    invoke-static {}, Landroid/os/MessageQueue;->isDebugableForSystemUI()Z

    move-result v0

    const-string v9, "ConcurrentMessageQueue"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@@@### removeSyncBarrierConcurrent token : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v10, :cond_1

    invoke-static {v10}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object p0

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v1, :cond_3

    iget p0, p0, Landroid/os/Message;->arg1:I

    if-ne p0, p1, :cond_3

    iget-wide v1, v0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v1, v2}, Landroid/os/MessageQueue;->nativeWake(J)V

    goto :goto_1

    :cond_1
    if-nez p0, :cond_3

    invoke-static {}, Landroid/os/MessageQueue;->isDebugableForSystemUI()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "@@@### /// removeSyncBarrierConcurrent findOrRemoveMessages returns FALSE / token : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0}, Landroid/os/MessageQueue;->printRemainBarrierInfo()V

    invoke-static {}, Landroid/os/MessageQueue;->makeHeapdump()V

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/MessageQueue;->isDebugableForSystemUI()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v0, Landroid/os/MessageQueue;->mRemainBarriers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private blacklist removeSyncBarrierLegacy(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_0

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_1

    :cond_0
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_7

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_5

    iput-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    :cond_2
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-nez v2, :cond_3

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_3
    if-eqz v2, :cond_4

    iget-object v1, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_5

    :cond_4
    const/4 p1, 0x1

    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez p1, :cond_6

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private blacklist stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z
    .locals 11

    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->getStateNode(Landroid/os/MessageQueue$StackNode;)Landroid/os/MessageQueue$StateNode;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/os/MessageQueue;->waitForDrainCompleted()V

    return v2

    :cond_0
    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    :goto_0
    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v3, p7

    move-object v4, v0

    invoke-virtual/range {v3 .. v10}, Landroid/os/MessageQueue$MessageCompare;->compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result v0

    move-object v1, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eqz p8, :cond_4

    invoke-virtual {v1}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {v2}, Landroid/os/MessageQueue$MessageCounts;->incrementCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v2, v3}, Landroid/os/MessageQueue;->nativeWake(J)V

    :cond_1
    move v2, v0

    :cond_2
    iget-object v0, v1, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    move v0, v2

    :cond_4
    invoke-direct {p0}, Landroid/os/MessageQueue;->waitForDrainCompleted()V

    return v0

    :cond_5
    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    goto :goto_0
.end method

.method private blacklist swapAndSetStackStateActive()Landroid/os/MessageQueue$StackNode;
    .locals 3

    :cond_0
    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v1

    sget-object v2, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    if-eq v1, v2, :cond_1

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StackNode;Landroid/os/MessageQueue$StateNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-object v1
.end method

.method private static blacklist throwIfNotTest()V
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Instrumentation;->isInstrumenting()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Test-only API called not from a test!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfNotTest$ravenwood()V
    .locals 0

    return-void
.end method

.method private blacklist traceMessageCount()V
    .locals 3

    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/os/PerfettoTrace;->counter(Landroid/os/PerfettoTrace$Category;J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/MessageQueue;->mTid:J

    iget-object p0, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingThreadCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    return-void
.end method

.method private greylist-max-o updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_1

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    :cond_1
    if-eqz p2, :cond_4

    or-int/lit8 p2, p2, 0x4

    if-nez v2, :cond_3

    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    :cond_2
    new-instance v1, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    iget-object p1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    iget p1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    :goto_0
    iget-wide p0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {p0, p1, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    return-void

    :cond_4
    if-eqz v2, :cond_5

    const/4 p1, 0x0

    iput p1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    iget-object p2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    iget-wide p2, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {p2, p3, v0, p1}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    :cond_5
    :goto_1
    return-void
.end method

.method private blacklist waitForDrainCompleted()V
    .locals 1

    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method


# virtual methods
.method public whitelist addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->addIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->addIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Can\'t add a null IdleHandler"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fd must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 10
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(MessageQueue is using Concurrent implementation)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    move v9, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    invoke-static {v0}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v1

    if-eqz p3, :cond_0

    iget-object v4, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "State: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PriorityQueue Messages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I

    move-result p0

    move-object v1, v4

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    add-int v6, v9, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AsyncPriorityQueue Messages: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct/range {v1 .. v6}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I

    move-result p0

    move-object v4, v1

    add-int/2addr v6, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(Total messages: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", polling="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/MessageQueue;->isPolling()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", quitting="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {p1, v4}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void

    :cond_4
    move-object v4, p0

    move-object v3, p1

    move-object v7, p2

    move-object v5, p3

    monitor-enter v4

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(MessageQueue is using Legacy implementation)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    iget-object p2, v4, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_2
    if-eqz p2, :cond_7

    if-eqz v5, :cond_5

    iget-object p3, p2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p3, :cond_6

    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Message "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v3, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    iget-object p2, p2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(Total messages: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", polling="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v4}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", quitting="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v4, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const-wide v1, 0x20b00000001L

    const-wide v3, 0x10800000003L

    const-wide v5, 0x10800000002L

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v7

    if-eqz v7, :cond_0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    invoke-static {v0}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7, p1, v1, v2}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v0, v0, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p0, v0, p1}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I

    iget-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p0, v0, p1}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I

    invoke-virtual {p0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result v0

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    sget-object v0, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result p0

    invoke-virtual {p1, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method greylist-max-o enqueueMessage(Landroid/os/Message;J)Z
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageConcurrent(Landroid/os/Message;J)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageLegacy(Landroid/os/Message;J)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message must have a target."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method blacklist hasEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method greylist-max-r hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method blacklist isBlockedOnSyncBarrier()Z
    .locals 3

    invoke-static {}, Landroid/os/MessageQueue;->throwIfNotTest()V

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v1}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/MessageQueue$MessageNode;->isBarrier()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public whitelist isIdle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdleConcurrent()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdleLegacy()Z

    move-result p0

    return p0
.end method

.method public greylist-max-o isPolling()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingConcurrent()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLegacy()Z

    move-result p0

    return p0
.end method

.method greylist next()Landroid/os/Message;
    .locals 1

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/os/MessageQueue;->nextConcurrent()Landroid/os/Message;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nextLegacy()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method blacklist peekWhenForTest()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Landroid/os/MessageQueue;->throwIfNotTest()V

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->legacyPeekOrPoll(Z)Landroid/os/Message;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    iget-wide v0, p0, Landroid/os/Message;->when:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist pollForTest()Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/MessageQueue;->throwIfNotTest()V

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->legacyPeekOrPoll(Z)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public greylist postSyncBarrier()I
    .locals 1

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/os/MessageQueue;->postSyncBarrierConcurrent()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->postSyncBarrierLegacy()I

    move-result p0

    return p0
.end method

.method greylist-max-o quit(Z)V
    .locals 4

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    const/4 v3, 0x0

    invoke-polymorphic {v2, p0, v3, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessages()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessages()V

    :goto_0
    iget-wide p0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {p0, p1}, Landroid/os/MessageQueue;->nativeWake(J)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    iput-boolean v1, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    :goto_1
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Main thread not allowed to quit."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist removeCallbacksAndEqualMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method blacklist removeCallbacksAndEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 9

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    return-void
.end method

.method blacklist removeCallbacksAndEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_6

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    if-eqz p2, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_3

    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method greylist-max-o removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fd must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist removeSyncBarrier(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeSyncBarrierConcurrent(I)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeSyncBarrierLegacy(I)V

    return-void
.end method
