.class public final Landroid/window/WindowContainerTransaction;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$Change;,
        Landroid/window/WindowContainerTransaction$HierarchyOp;,
        Landroid/window/WindowContainerTransaction$ContainerChange;,
        Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;,
        Landroid/window/WindowContainerTransaction$AdditionalFlags;,
        Landroid/window/WindowContainerTransaction$ChangeTransitRequest;
    }
.end annotation


# static fields
.field public static final blacklist ADDITIONAL_FLAG_KEEP_ROTATION_DURING_TRANSITION:I = 0x1

.field public static final blacklist ADDITIONAL_FLAG_TRANSITION_REASON_DIVIDER_DRAG_END:I = 0x2

.field public static final blacklist ADDITIONAL_FLAG_TRANSITION_REASON_SPLIT_STACKING:I = 0x4

.field public static final blacklist CHANGE_TRANSIT_REQUEST_FULLSCREEN_TO_SPLIT:I = 0x1

.field public static final blacklist CHANGE_TRANSIT_REQUEST_FULLSCREEN_TO_SPLIT_ROTATION:I = 0x3

.field public static final blacklist CHANGE_TRANSIT_REQUEST_SPLIT_TO_FULLSCREEN:I = 0x2

.field public static final blacklist CHANGE_TRANSIT_REQUEST_UNDEFINED:I = 0x0

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TRANSACTION_TYPE_ACTIVATE_DESK:I = 0x4

.field public static final blacklist TRANSACTION_TYPE_DISMISS_SPLIT_WITH_ALL_APPS:I = 0x7

.field public static final blacklist TRANSACTION_TYPE_DISMISS_SPLIT_WITH_FREEFORM:I = 0x6

.field public static final blacklist TRANSACTION_TYPE_START_INTENTS:I = 0x1

.field public static final blacklist TRANSACTION_TYPE_START_TASKS:I = 0x3

.field public static final blacklist TRANSACTION_TYPE_START_TASKS_FROM_RECENT:I = 0x5

.field public static final blacklist TRANSACTION_TYPE_START_TASK_AND_INTENT:I = 0x2

.field public static final blacklist TRANSACTION_TYPE_UNDEFINED:I


# instance fields
.field private blacklist mAdditionalFlag:I

.field private blacklist mAvoidReady:Z

.field private final blacklist mChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerTransaction$ContainerChange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChangeTransitionRequest:I

.field private final blacklist mChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDismissSplit:Z

.field private blacklist mDisplayChangeTransitionReason:Ljava/lang/String;

.field private blacklist mDisplayIdForChangeTransition:I

.field private blacklist mErrorCallbackToken:Landroid/os/IBinder;

.field private final blacklist mHierarchyOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMergedTransitionTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPositionChange:Z

.field private blacklist mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field private blacklist mTransferLeashMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransferTransitionTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/WindowContainerTransaction$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput v2, p0, Landroid/window/WindowContainerTransaction;->mType:I

    iput-boolean v2, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    iput-boolean v2, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    iput v2, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    sget-object v0, Landroid/window/WindowContainerTransaction$HierarchyOp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    :cond_1
    sget-object v0, Landroid/window/WindowContainerTransaction$ContainerChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mAvoidReady:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mAdditionalFlag:I

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_4

    const-class v0, Landroid/os/IBinder;

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    const-class v0, Landroid/os/IBinder;

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/WindowContainerTransaction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist changeTransitRequestToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CHANGE_TRANSIT_REQUEST_SPLIT_TO_FULLSCREEN"

    return-object p0

    :cond_1
    const-string p0, "CHANGE_TRANSIT_REQUEST_FULLSCREEN_TO_SPLIT"

    return-object p0

    :cond_2
    const-string p0, "CHANGE_TRANSIT_REQUEST_UNDEFINED"

    return-object p0
.end method

.method private blacklist getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    if-nez v0, :cond_0

    new-instance v0, Landroid/window/WindowContainerTransaction$Change;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$Change;-><init>(Landroid/window/WindowContainerTransaction-IA;)V

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic blacklist lambda$hasChangeTransitMode$0(Landroid/window/WindowContainerTransaction$Change;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->hasChangeTransitMode()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist addAdditionalInfo(I)V
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mAdditionalFlag:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/window/WindowContainerTransaction;->mAdditionalFlag:I

    return-void
.end method

.method public blacklist addChangeTransitFlags(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeTransitFlags(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitFlags(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist addInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;IILandroid/graphics/Rect;[Landroid/graphics/Rect;I)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    new-instance v0, Landroid/view/InsetsFrameProvider;

    invoke-direct {v0, p2, p3, p4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    const/4 p3, 0x3

    invoke-virtual {v0, p3}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/view/InsetsFrameProvider;->setArbitraryRectangle(Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;

    move-result-object p3

    invoke-virtual {p3, p6}, Landroid/view/InsetsFrameProvider;->setBoundingRects([Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;

    move-result-object p3

    invoke-virtual {p3, p7}, Landroid/view/InsetsFrameProvider;->setFlags(I)Landroid/view/InsetsFrameProvider;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameOwner(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addKeyguardState(Landroid/window/KeyguardState;)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setKeyguardState(Landroid/window/KeyguardState;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addMergedTransitionToken(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setTaskFragmentOperation(Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addTransferLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist addTransferTransitionToken(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist avoidReady()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/WindowContainerTransaction;->mAvoidReady:Z

    return p0
.end method

.method public blacklist changeTransitionRequested()Z
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist clear()V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-void
.end method

.method public blacklist clearAdjacentRoots(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForClearAdjacentRoots(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist clearAdjacentTaskFragments(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist closeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForCloseTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist createTaskFragment(Landroid/window/TaskFragmentCreationParams;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOperation$Builder;->setTaskFragmentCreationParams(Landroid/window/TaskFragmentCreationParams;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist deferConfigToTransitionEnd(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigAtTransitionEnd(Landroid/window/WindowContainerTransaction$Change;Z)V

    return-object p0
.end method

.method public blacklist deleteTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist displayChangeTransitionRequested()Z
    .locals 1

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist finishActivity(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist getAdditionalFlags()I
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mAdditionalFlag:I

    return p0
.end method

.method public blacklist getChangeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/WindowContainerTransaction$ContainerChange;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getChangeTransitionRequest()I
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    return p0
.end method

.method public blacklist getChanges()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public blacklist getDisplayChangeTransitionReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDisplayIdForChangeTransition()I
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    return p0
.end method

.method public blacklist getErrorCallbackToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist getHierarchyOps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getMergedTransitionTokens()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object p0
.end method

.method public blacklist getTransferLeashMap()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public blacklist getTransferTransitionTokens()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist hasChangeTransitMode()Z
    .locals 1

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/window/WindowContainerTransaction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isActivateDeskType()Z
    .locals 1

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDismissSplit()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    return p0
.end method

.method public blacklist isDismissSplitWithAllApps()Z
    .locals 1

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDismissSplitWithFreeform()Z
    .locals 1

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isStagePositionChanged()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    return p0
.end method

.method public blacklist isStartIntentsType()Z
    .locals 1

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isStartTaskAndIntentType()Z
    .locals 1

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isStartTasksFromRecentType()Z
    .locals 1

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isStartTasksType()Z
    .locals 1

    iget p0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist merge(Landroid/window/WindowContainerTransaction;Z)V
    .locals 6

    iget-object v0, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    iget-object v4, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iget-object v5, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction$Change;

    if-nez v5, :cond_0

    new-instance v5, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v5, v3}, Landroid/window/WindowContainerTransaction$Change;-><init>(Landroid/window/WindowContainerTransaction-IA;)V

    iget-object v3, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v5, v3, p2}, Landroid/window/WindowContainerTransaction$Change;->merge(Landroid/window/WindowContainerTransaction$Change;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget-object v4, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v5, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-direct {v5, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(Landroid/window/WindowContainerTransaction$HierarchyOp;)V

    move-object v2, v5

    :goto_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz p2, :cond_5

    iget-object v0, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    if-ne p2, v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t merge two WCTs with different error token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_4

    :cond_6
    move-object p2, v3

    :goto_4
    iget-object v0, p1, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_7
    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    iget-object p2, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    :goto_5
    iput-object p2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t merge two WCTs from different TaskFragmentOrganizers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist movePipActivityToPinnedRootTask(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 3

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setBounds(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist orderedSetChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$ContainerChange;-><init>()V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mToken:Landroid/os/IBinder;

    new-instance p1, Landroid/window/WindowContainerTransaction$Change;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/window/WindowContainerTransaction$Change;-><init>(Landroid/window/WindowContainerTransaction-IA;)V

    iput-object p1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    iget-object p1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitMode(Landroid/window/WindowContainerTransaction$Change;I)V

    iget-object p1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    invoke-static {p1, p3}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitReason(Landroid/window/WindowContainerTransaction$Change;Ljava/lang/String;)V

    iget-object p1, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist orderedSetWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$ContainerChange;-><init>()V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mToken:Landroid/os/IBinder;

    new-instance p1, Landroid/window/WindowContainerTransaction$Change;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/window/WindowContainerTransaction$Change;-><init>(Landroid/window/WindowContainerTransaction-IA;)V

    iput-object p1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    iget-object p1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    iget-object p1, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    new-instance v0, Landroid/view/InsetsFrameProvider;

    invoke-direct {v0, p2, p3, p4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameOwner(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist removeRootTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForRemoveRootTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForRemoveTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;ZZ)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist reorder(Landroid/window/WindowContainerToken;ZZ)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReorder(Landroid/os/IBinder;ZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReparent(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;
    .locals 8

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForChildrenTasksReparent(Landroid/os/IBinder;Landroid/os/IBinder;[I[IZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist requestFocusOnTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist requestForceTaskInfoChange(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmForceTaskInfoChangeRequested(Landroid/window/WindowContainerTransaction$Change;Z)V

    return-object p0
.end method

.method public blacklist restoreBackNavi()Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p1, v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmPinnedBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 3

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WCT.sendPendingIntent: sender="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " fillInIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Instrumentation"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v1, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmActivityWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public varargs blacklist setAdjacentRootSet([Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    array-length v0, p1

    new-array v0, v0, [Landroid/os/IBinder;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainers([Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "setAdjacentRootSet must have size >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Landroid/window/WindowContainerTransaction;->setAdjacentRootSet([Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setAdjacentTaskFragments(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setSecondaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/window/TaskFragmentOperation$Builder;->setBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setAlwaysOnTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    const/high16 v0, 0x20000000

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setAvoidReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mAvoidReady:Z

    return-void
.end method

.method public blacklist setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    const/high16 v0, 0x20000000

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmBoundsChangeTransaction(Landroid/window/WindowContainerTransaction$Change;Landroid/view/SurfaceControl$Transaction;)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setCaptionShowingState(Landroid/window/WindowContainerToken;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p0, p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmCaptionShowingState(Landroid/window/WindowContainerTransaction$Change;I)V

    return-void
.end method

.method public blacklist setChangeFreeformStashMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeFreeformStashMode(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeFreeformStashScale(Landroid/window/WindowContainerTransaction$Change;F)V

    return-object p0
.end method

.method public blacklist setChangeStagePosition(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    return-void
.end method

.method public blacklist setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitMode(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {p1, p3}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitReason(Landroid/window/WindowContainerTransaction$Change;Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setChangeTransitStartBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    :cond_0
    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public blacklist setChangeTransitionRequest(I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    return-void
.end method

.method public blacklist setCompanionTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setSecondaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v0

    iput p2, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit16 p2, p2, 0x1000

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setDisableLaunchAdjacent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetDisableLaunchAdjacent(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setDismissSplit(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    return-void
.end method

.method public blacklist setDisplayIdForChangeTransition(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    iput-object p2, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    return-void
.end method

.method public blacklist setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    invoke-static {p1, v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setDragResizing(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-static {p1, v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmDragResizing(Landroid/window/WindowContainerTransaction$Change;Z)V

    return-object p0
.end method

.method public blacklist setEmbedActivityMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p2}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    const/high16 v0, 0x20000000

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    const/high16 v0, 0x800000

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setErrorCallbackToken(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t set multiple error token for one transaction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setExcludeImeInsets(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setExcludeInsetsTypes(I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmFocusable(Landroid/window/WindowContainerTransaction$Change;Z)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmForceTranslucent(Landroid/window/WindowContainerTransaction$Change;Z)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit8 p2, p2, 0x40

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setFullscreenTransparentInDesktop(Landroid/window/WindowContainerToken;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmIsFullscreenTransparentInDesktop(Landroid/window/WindowContainerTransaction$Change;Z)V

    return-void
.end method

.method public blacklist setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmHidden(Landroid/window/WindowContainerTransaction$Change;Z)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setIgnoreOrientationRequest(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmIgnoreOrientationRequest(Landroid/window/WindowContainerTransaction$Change;Z)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit8 p2, p2, 0x10

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchRoot(Landroid/os/IBinder;[I[I)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setReachabilityOffset(Landroid/window/WindowContainerToken;III)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReachability(Landroid/os/IBinder;III)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setRelativeBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    :cond_0
    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit16 p2, p2, 0x100

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    const/high16 v0, 0x20000000

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentLeafTaskIfRelaunch(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setSafeRegionBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetSafeRegionBounds(Landroid/os/IBinder;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v0

    iput p2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object p2

    iput p3, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit16 p2, p2, 0x400

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setSkipLayoutTask(Landroid/window/WindowContainerToken;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmSkipLayoutTask(Landroid/window/WindowContainerTransaction$Change;Z)V

    return-void
.end method

.method public blacklist setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v0

    iput p2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/lit16 p2, p2, 0x800

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setStagePosition(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p2}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    const/high16 v0, 0x20000000

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {p1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    const/high16 v0, 0x200000

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object p0
.end method

.method public blacklist setTaskTrimmableFromRecents(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetTaskTrimmableFromRecents(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setTaskViewTaskOrganizerTaskId(Landroid/window/WindowContainerToken;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmTaskViewTaskOrganizerTaskId(Landroid/window/WindowContainerTransaction$Change;I)V

    return-void
.end method

.method public blacklist setTransactionType(I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction;->mType:I

    return-void
.end method

.method public blacklist setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist startActivityInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/window/TaskFragmentOperation$Builder;->setActivityIntent(Landroid/content/Intent;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/window/TaskFragmentOperation$Builder;->setBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 3

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WCT.startShortcut: shortcutInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Instrumentation"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForStartShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 3

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WCT.startTask: taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Instrumentation"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForTaskLaunch(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction;->changeTransitionRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " changeTransitRequest="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    invoke-static {v1}, Landroid/window/WindowContainerTransaction;->changeTransitRequestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WindowContainerTransaction { changes= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hops= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errorCallbackToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " taskFragmentOrganizer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget p2, p0, Landroid/window/WindowContainerTransaction;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz p2, :cond_0

    iget p2, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz p2, :cond_1

    iget p2, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    :cond_2
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Landroid/window/WindowContainerTransaction;->mAvoidReady:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/window/WindowContainerTransaction;->mAdditionalFlag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p0, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :cond_4
    return-void
.end method
