.class public final Landroid/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mFlags:I

.field private greylist-max-o mIsRtlContext:Z

.field private greylist-max-o mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/BidiFormatter;->-$$Nest$smisRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/BidiFormatter;->-$$Nest$smisRtlLocale(Ljava/util/Locale;)Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method private greylist-max-o initialize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {}, Landroid/text/BidiFormatter;->-$$Nest$sfgetDEFAULT_TEXT_DIRECTION_HEURISTIC()Landroid/text/TextDirectionHeuristic;

    move-result-object p1

    iput-object p1, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 p1, 0x2

    iput p1, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/text/BidiFormatter;
    .locals 4

    iget v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    invoke-static {}, Landroid/text/BidiFormatter;->-$$Nest$sfgetDEFAULT_TEXT_DIRECTION_HEURISTIC()Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {p0}, Landroid/text/BidiFormatter;->-$$Nest$smgetDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/text/BidiFormatter;

    iget-boolean v1, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    iget v2, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    iget-object p0, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;Landroid/text/BidiFormatter-IA;)V

    return-object v0
.end method

.method public whitelist setTextDirectionHeuristic(Landroid/text/TextDirectionHeuristic;)Landroid/text/BidiFormatter$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public whitelist stereoReset(Z)Landroid/text/BidiFormatter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    return-object p0

    :cond_0
    iget p1, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    return-object p0
.end method
