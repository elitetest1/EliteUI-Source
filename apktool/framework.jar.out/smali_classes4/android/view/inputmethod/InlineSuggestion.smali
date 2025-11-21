.class public final Landroid/view/inputmethod/InlineSuggestion;
.super Ljava/lang/Object;
.source "InlineSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;,
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;,
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;,
        Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestion"

.field static blacklist sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Lcom/android/internal/view/inline/InlineTooltipUi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

.field private final blacklist mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

.field private blacklist mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

.field private blacklist mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;


# direct methods
.method public static synthetic blacklist $r8$lambda$kSn-Zd1tPJ9C01qIBnKzXgrKHvg(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion;->lambda$inflate$2(Landroid/widget/inline/InlineContentView;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mmGB28AqJBMoLUJaA2S0n1gyx8k(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion;->lambda$inflate$3(Landroid/widget/inline/InlineContentView;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-class v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;-><init>(Landroid/view/inputmethod/InlineSuggestion-IA;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    :cond_0
    const-class v0, Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;-><init>(Landroid/view/inputmethod/InlineSuggestion-IA;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    :cond_1
    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InlineSuggestion$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    sget-object v1, Landroid/view/inputmethod/InlineSuggestionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InlineSuggestionInfo;

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v0

    :goto_0
    sget-object v3, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    invoke-interface {v3, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    sget-object v4, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    invoke-interface {v4, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/inline/InlineTooltipUi;

    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    const-class v4, Landroid/annotation/NonNull;

    invoke-static {v4, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iput-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Lcom/android/internal/view/inline/InlineTooltipUi;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private declared-synchronized blacklist getInlineContentCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;",
            "Lcom/android/internal/view/inline/InlineTooltipUi;",
            ")",
            "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;-><init>(Landroid/content/Context;Lcom/android/internal/view/inline/IInlineContentProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already called #inflate()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static blacklist isValid(III)Z
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    if-lt p0, p1, :cond_1

    if-gt p0, p2, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$inflate$0(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$inflate$1(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$inflate$2(Landroid/widget/inline/InlineContentView;)V
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setTooltipView(Landroid/widget/inline/InlineContentView;)V

    return-void
.end method

.method private synthetic blacklist lambda$inflate$3(Landroid/widget/inline/InlineContentView;)V
    .locals 2

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static blacklist newInlineSuggestion(Landroid/view/inputmethod/InlineSuggestionInfo;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 2

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Lcom/android/internal/view/inline/InlineTooltipUi;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/view/inputmethod/InlineSuggestion;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    iget-object p1, p1, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getContentProvider()Lcom/android/internal/view/inline/IInlineContentProvider;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    return-object p0
.end method

.method public whitelist getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    return-object p0
.end method

.method public blacklist getInlineContentCallback()Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    return-object p0
.end method

.method public blacklist getInlineTooltipUi()Lcom/android/internal/view/inline/InlineTooltipUi;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist inflate(Landroid/content/Context;Landroid/util/Size;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Size;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionInfo;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InlineSuggestionInfo;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/view/inputmethod/InlineSuggestion;->isValid(III)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/view/inputmethod/InlineSuggestion;->isValid(III)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionInfo;->getTooltip()Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {v2, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {p0, p1, p3, p4, v2}, Landroid/view/inputmethod/InlineSuggestion;->getInlineContentCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    move-result-object v2

    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-nez v2, :cond_2

    new-instance p1, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    new-instance v3, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;

    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-direct {v3, v4}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-interface {v2, v1, p2, v3}, Lcom/android/internal/view/inline/IInlineContentProvider;->provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error creating suggestion content surface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "InlineSuggestion"

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda1;

    invoke-direct {p2, p4}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance p2, Landroid/util/Size;

    const/4 p4, -0x2

    invoke-direct {p2, p4, p4}, Landroid/util/Size;-><init>(II)V

    iget-object p4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {p4}, Landroid/view/inputmethod/InlineSuggestionInfo;->getTooltip()Landroid/view/inputmethod/InlineSuggestion;

    move-result-object p4

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/InlineSuggestion;)V

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/view/inputmethod/InlineSuggestion;->inflate(Landroid/content/Context;Landroid/util/Size;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "size is neither between min:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and max:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", nor wrap_content"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InlineSuggestion { info = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentProvider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inlineContentCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inlineTooltipUi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :cond_3
    sget-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    return-void
.end method
