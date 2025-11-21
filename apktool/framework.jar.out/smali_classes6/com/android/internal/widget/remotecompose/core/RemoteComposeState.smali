.class public Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
.super Ljava/lang/Object;
.source "RemoteComposeState.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;


# static fields
.field private static final blacklist MAX_DATA:I = 0x3e8

.field public static final blacklist START_ID:I = 0x2a

.field private static blacklist sMaxColors:I = 0xc8


# instance fields
.field blacklist mAllVarListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

.field private blacklist mColorOverride:[Z

.field private final blacklist mDataIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataOverride:[Z

.field private final blacklist mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

.field private final blacklist mFloatOverride:[Z

.field private blacklist mIdMaps:[I

.field private final blacklist mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

.field private final blacklist mIntegerOverride:[Z

.field private blacklist mNextId:I

.field private final blacklist mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "[F>;"
        }
    .end annotation
.end field

.field private final blacklist mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

.field blacklist mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v0, 0x3e8

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    const v1, 0x10002a

    const v2, 0x20002a

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIdMaps:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mAllVarListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist add(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mAllVarListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist updateListeners(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->markDirty()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v0, 0xfffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist cacheData(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public blacklist cacheData(Ljava/lang/Object;I)I
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method public blacklist cacheData(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist cacheFloat(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    return v0
.end method

.method public blacklist cacheFloat(IF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    return-void
.end method

.method public blacklist cacheInteger(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    return v0
.end method

.method public blacklist clearColorOverride()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist clearDataOverride(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    return-void
.end method

.method public blacklist clearFloatOverride(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    return-void
.end method

.method public blacklist clearIntegerOverride(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    return-void
.end method

.method public blacklist containsId(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dataGetId(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getColor(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    return-object p0
.end method

.method public blacklist getFloat(I)F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result p0

    return p0
.end method

.method public blacklist getFloatValue(II)F
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v0, 0xfffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {p0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloatValue(I)F

    move-result p0

    return p0
.end method

.method public blacklist getFloats(I)[F
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v0, 0xfffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloats()[F

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFromId(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getId(II)I
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v0, 0xfffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {p0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getId(I)I

    move-result p0

    return p0
.end method

.method public blacklist getInteger(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result p0

    return p0
.end method

.method public blacklist getListLength(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v0, 0xfffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getLength()I

    move-result p0

    return p0
.end method

.method public blacklist getObject(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOpsToUpdate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .locals 1

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p0, 0x3e8

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    const p0, 0xea60

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getPath(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPathData(I)[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public blacklist hasListener(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist listenToVar(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->add(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    return-void
.end method

.method public blacklist markWritten(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist nextId()I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    return v0
.end method

.method public blacklist nextId(I)I
    .locals 2

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    return p1

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIdMaps:[I

    aget v0, p0, p1

    add-int/lit8 v1, v0, 0x1

    aput v1, p0, p1

    return v0
.end method

.method public blacklist overrideColor(II)V
    .locals 2

    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    if-lt p1, v0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    return-void
.end method

.method public blacklist overrideData(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    :cond_0
    return-void
.end method

.method public blacklist overrideFloat(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    :cond_0
    return-void
.end method

.method public blacklist overrideInteger(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    :cond_0
    return-void
.end method

.method public blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist putPath(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist putPathData(I[F)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public blacklist reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->clear()V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public blacklist setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->clearLastOpCount()V

    return-void
.end method

.method public blacklist setNextId(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    return-void
.end method

.method public blacklist setWindowHeight(F)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    return-void
.end method

.method public blacklist setWindowWidth(F)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    return-void
.end method

.method public blacklist updateColor(II)V
    .locals 1

    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    return-void
.end method

.method public blacklist updateData(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    :cond_0
    return-void
.end method

.method public blacklist updateFloat(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    :cond_0
    return-void
.end method

.method public blacklist updateInteger(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    :cond_0
    return-void
.end method

.method public blacklist updateObject(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist wasNotWritten(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
