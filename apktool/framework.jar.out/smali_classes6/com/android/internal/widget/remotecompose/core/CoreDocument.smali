.class public Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.super Ljava/lang/Object;
.source "CoreDocument.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;
    }
.end annotation


# static fields
.field static final blacklist BUILD:F = 0.0f

.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DOCUMENT_API_LEVEL:I = 0x6

.field public static final blacklist MAJOR_VERSION:I = 0x1

.field public static final blacklist MINOR_VERSION:I = 0x0

.field public static final blacklist PATCH_VERSION:I = 0x0

.field private static final blacklist UPDATE_VARIABLES_BEFORE_LAYOUT:Z = false


# instance fields
.field blacklist mActionListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppliedTouchOperations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

.field blacklist mClickAreas:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mComponentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mContentAlignment:I

.field blacklist mContentDescription:Ljava/lang/String;

.field blacklist mContentMode:I

.field blacklist mContentScroll:I

.field blacklist mContentSizing:I

.field private blacklist mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mFirstPaint:Z

.field private final blacklist mFloatExpressions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

.field blacklist mHeight:I

.field blacklist mIdActionListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntegerExpressions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsUpdateDoc:Z

.field private blacklist mLastId:I

.field private blacklist mLastOpCount:I

.field blacklist mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

.field private blacklist mRepaintNext:I

.field blacklist mRequiredCapabilities:J

.field blacklist mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

.field private final blacklist mScaleOutput:[F

.field public blacklist mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

.field blacklist mTouchListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/TouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTranslateOutput:[F

.field blacklist mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

.field blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFirstPaint:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIsUpdateDoc:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return-void
.end method

.method private blacklist addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    :goto_1
    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aput v4, v2, v3

    aget v3, v2, v5

    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v5

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private blacklist applyOperations(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_1
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->applyOperations(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_1
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V

    :cond_2
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getShaderTextId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;->isShaderValid(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->enable(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private blacklist computeTranslate(FFFF[F)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    and-int/lit16 v1, v0, 0xf0

    and-int/lit8 v0, v0, 0xf

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p3

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, p4

    const/16 p3, 0x20

    const/high16 p4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eq v1, p3, :cond_1

    const/16 p3, 0x40

    if-eq v1, p3, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v2

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v2

    div-float/2addr p1, p4

    :goto_0
    const/4 p3, 0x2

    if-eq v0, p3, :cond_3

    const/4 p3, 0x4

    if-eq v0, p3, :cond_2

    goto :goto_1

    :cond_2
    sub-float v3, p2, p0

    goto :goto_1

    :cond_3
    sub-float/2addr p2, p0

    div-float v3, p2, p4

    :goto_1
    const/4 p0, 0x0

    aput p1, p5, p0

    const/4 p0, 0x1

    aput v3, p5, p0

    return-void
.end method

.method private blacklist getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I
    .locals 3

    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->estimateIterations()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I

    move-result v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static blacklist getDocumentApiLevel()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method private blacklist getNamedVars(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    iget v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    if-ne v2, p1, :cond_1

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVars(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist inflateComponents(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    instance-of v3, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_2

    move-object v3, v5

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    instance-of v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v7, :cond_0

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    if-ge v6, v7, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    :cond_1
    instance-of v6, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v6, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_3
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;

    if-eqz v6, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    goto :goto_2

    :cond_5
    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_3

    :cond_6
    move-object v5, v0

    :goto_3
    if-eqz v3, :cond_8

    instance-of v6, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v6, :cond_7

    move-object v6, v3

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->inflate()V

    :cond_7
    move-object v6, v3

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    instance-of v6, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    if-eqz v6, :cond_9

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V

    :cond_9
    move-object v3, v5

    goto/16 :goto_0

    :cond_a
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;

    if-eqz v6, :cond_b

    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V

    :cond_b
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    return-object v3
.end method

.method static synthetic blacklist lambda$applyUpdate$0(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/Operation;)V
    .locals 1

    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v0, :cond_0

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    iget p1, p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->mTextId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz p0, :cond_1

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    if-eqz p0, :cond_2

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    if-eqz p0, :cond_3

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    if-eqz p0, :cond_4

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    if-eqz p0, :cond_5

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method static synthetic blacklist lambda$applyUpdate$1(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/Operation;)V
    .locals 1

    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v0, :cond_0

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    iget p1, p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->mTextId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->update(Lcom/android/internal/widget/remotecompose/core/operations/TextData;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->markDirty()V

    return-void

    :cond_0
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz p0, :cond_1

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->update(Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->markDirty()V

    return-void

    :cond_1
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    if-eqz p0, :cond_2

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->update(Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->markDirty()V

    return-void

    :cond_2
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    if-eqz p0, :cond_3

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->update(Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->markDirty()V

    return-void

    :cond_3
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    if-eqz p0, :cond_4

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->update(Lcom/android/internal/widget/remotecompose/core/types/LongConstant;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->markDirty()V

    return-void

    :cond_4
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    if-eqz p0, :cond_5

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->update(Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->markDirty()V

    :cond_5
    return-void
.end method

.method private blacklist recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V

    :cond_0
    invoke-interface {p2, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;->visit(Lcom/android/internal/widget/remotecompose/core/Operation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_1
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_2
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    :cond_3
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getComponentId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->addComponentValue(Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;)V

    goto :goto_0

    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=> Component not found for id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getComponentId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    :goto_0
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_6

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private blacklist sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I
    .locals 0

    const/16 p0, 0x64

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/Operation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getSize()I

    move-result p1

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    return p1
.end method

.method private blacklist toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6

    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    :cond_0
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/util/List;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V
    .locals 3

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;->onAction(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addActionCallback(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;-><init>(ILjava/lang/String;FFFFLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist appliedTouchOperation(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist applyUpdate(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda0;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {p0, v7, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V

    return-void
.end method

.method public blacklist canBeDisplayed(IIJ)Z
    .locals 1

    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget p3, p3, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    const/4 p4, 0x1

    if-ge p3, p1, :cond_0

    return p4

    :cond_0
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget p3, p3, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    const/4 v0, 0x0

    if-le p3, p1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    if-gt p0, p2, :cond_2

    return p4

    :cond_2
    return v0
.end method

.method public blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V

    return-void
.end method

.method public blacklist clearActionCallbacks()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public blacklist computeScale(FF[F)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v0, v0

    div-float v2, p1, v0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float p0, p0

    div-float p0, p2, p0

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float p0, p0

    div-float/2addr p2, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float p0, p0

    div-float/2addr p2, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0

    :pswitch_3
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float p0, p0

    div-float v2, p2, p0

    goto :goto_0

    :pswitch_4
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float p0, p0

    div-float v2, p1, p0

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float p0, p0

    div-float/2addr p2, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_0
    :goto_0
    move p0, v2

    :goto_1
    const/4 p1, 0x0

    aput v2, p3, p1

    const/4 p1, 0x1

    aput p0, p3, p1

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist displayHierarchy()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;-><init>()V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->displayHierarchy(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    invoke-interface {v1, v3, v0}, Lcom/android/internal/widget/remotecompose/core/SerializableToString;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist evaluateFloatExpression(IILcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result p0

    invoke-virtual {p3, p2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->overrideFloat(IF)V

    :cond_0
    return-void
.end method

.method public blacklist evaluateIntExpression(JILcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p0

    invoke-virtual {p4, p3, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->overrideInteger(II)V

    :cond_0
    return-void
.end method

.method public blacklist getBuffer()Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    return-object p0
.end method

.method public blacklist getClickAreas()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    return-object p0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getContentMode()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    return p0
.end method

.method public blacklist getContentScroll()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    return p0
.end method

.method public blacklist getContentSizing()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    return p0
.end method

.method public blacklist getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    return p0
.end method

.method public blacklist getIdActionListeners()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    return-object p0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVars(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNumberOfOps()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public blacklist getOperations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getOpsPerFrame()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastOpCount:I

    return p0
.end method

.method public blacklist getProperty(S)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-object p0
.end method

.method public blacklist getRequiredCapabilities()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    return-wide v0
.end method

.method public blacklist getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object p0
.end method

.method public blacklist getStats()[Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    goto :goto_1

    :cond_1
    const/4 v9, 0x2

    new-array v9, v9, [I

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v9

    :goto_1
    aget v9, v8, v7

    add-int/2addr v9, v6

    aput v9, v8, v7

    aget v7, v8, v6

    invoke-direct {p0, v5, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v9

    add-int/2addr v7, v9

    aput v7, v8, v6

    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-direct {p0, v5, v3, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v5

    :goto_2
    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    if-eqz v6, :cond_0

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    invoke-direct {p0, v5, v3, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v5

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "number of operations : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v7, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v7

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v6

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-array p0, v7, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    return p0
.end method

.method public blacklist haptic(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;->haptic(I)V

    :cond_0
    return-void
.end method

.method public blacklist hasTouchListener()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->hasTouchListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist initFromBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->inflateFromBuffer(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->setVersion(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    :cond_1
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    iget v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    iget v3, v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->inflateComponents(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    :cond_5
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz p1, :cond_6

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->assignIds(I)V

    :cond_6
    return-void
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->reset()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setNextId(I)V

    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->applyOperations(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    sget-object p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-void
.end method

.method public blacklist invalidateMeasure()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->invalidateMeasure()V

    :cond_0
    return-void
.end method

.method public blacklist isUpdateDoc()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIsUpdateDoc:Z

    return p0
.end method

.method public blacklist needsRepaint()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return p0
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    :cond_2
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V
    .locals 11

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->clearLastOpCount()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clearNeedsRepaint()V

    const/16 v0, 0x1b

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setTheme(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->computeScale(FF[F)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v8, v1, v3

    aget v9, v1, v4

    iget v6, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget v7, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->computeTranslate(FFFF[F)V

    iget-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    aget v2, v1, v3

    aget v1, v1, v4

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->scale(FF)V

    goto :goto_0

    :cond_0
    move-object v5, p0

    iget p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    float-to-int p0, p0

    invoke-virtual {v5, p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setWidth(I)V

    iget p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    float-to-int p0, p0

    invoke-virtual {v5, p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHeight(I)V

    :goto_0
    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->updateOps()I

    move-result p0

    iput p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz p0, :cond_5

    iget p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getWidth()F

    move-result v1

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    iget p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getHeight()F

    move-result v1

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->invalidateMeasure()V

    :cond_2
    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->needsMeasure()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_3
    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->needsBoundsAnimation()Z

    move-result p0

    if-eqz p0, :cond_4

    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->clearNeedsBoundsAnimation()V

    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_4
    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->doesNeedsRepaint()Z

    move-result p0

    if-eqz p0, :cond_5

    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    :cond_5
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    :goto_1
    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v3, p0, :cond_a

    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/Operation;

    if-eq p2, v0, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getTheme()I

    move-result v1

    if-eq v1, p2, :cond_6

    if-eq v1, v0, :cond_6

    instance-of v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Theme;

    if-eqz v1, :cond_9

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v1

    if-nez v1, :cond_7

    instance-of v2, p0, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_8

    instance-of v1, p0, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    move-object v1, p0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->doesNeedsRepaint()Z

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->doesNeedsRepaint()Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    :cond_c
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getLastOpCount()I

    move-result p0

    iput p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastOpCount:I

    return-void
.end method

.method public blacklist performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    iget v2, v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    if-ne v2, p2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;->onAction(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p2

    if-eqz p2, :cond_3

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, p0, p3, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    :cond_3
    return-void
.end method

.method public blacklist runNamedAction(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;->onAction(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    const-string v0, "CoreDocument"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "operations"

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist setBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    return-void
.end method

.method public blacklist setContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentDescription:Ljava/lang/String;

    return-void
.end method

.method public blacklist setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowHeight(F)V

    return-void
.end method

.method public blacklist setProperties(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    return-void
.end method

.method public blacklist setRemoteComposeState(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-void
.end method

.method public blacklist setRequiredCapabilities(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    return-void
.end method

.method public blacklist setUpdateDoc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIsUpdateDoc:Z

    return-void
.end method

.method public blacklist setVersion(III)V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowWidth(F)V

    return-void
.end method

.method public blacklist toNestedString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    const-string v3, "  "

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist touchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .locals 6

    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    iget-object p0, v2, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    const/4 p0, 0x1

    iput p0, v2, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return-void
.end method

.method public blacklist touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .locals 2

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    :cond_1
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return-void
.end method

.method public blacklist touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)Z
    .locals 9

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    const/4 v8, 0x1

    move-object v5, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    goto :goto_1

    :cond_1
    move-object v5, p0

    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_2
    move-object v5, p0

    :cond_3
    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .locals 9

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    move-object v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move-object v3, v5

    move v5, p2

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return-void
.end method
