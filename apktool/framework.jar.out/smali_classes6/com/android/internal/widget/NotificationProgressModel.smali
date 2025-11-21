.class public final Lcom/android/internal/widget/NotificationProgressModel;
.super Ljava/lang/Object;
.source "NotificationProgressModel.java"


# static fields
.field public static final blacklist INVALID_COLOR:I = 0x0

.field private static final blacklist KEY_INDETERMINATE_COLOR:Ljava/lang/String; = "indeterminateColor"

.field private static final blacklist KEY_IS_STYLED_BY_PROGRESS:Ljava/lang/String; = "isStyledByProgress"

.field private static final blacklist KEY_POINTS:Ljava/lang/String; = "points"

.field private static final blacklist KEY_PROGRESS:Ljava/lang/String; = "progress"

.field private static final blacklist KEY_SEGMENTS:Ljava/lang/String; = "segments"

.field private static final blacklist KEY_SEGMENTS_FALLBACK_COLOR:Ljava/lang/String; = "segmentsFallColor"


# instance fields
.field private final blacklist mIndeterminateColor:I

.field private final blacklist mIsStyledByProgress:Z

.field private final blacklist mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProgress:I

.field private final blacklist mSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSegmentsFallbackColor:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;IZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;IZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    iput p3, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    iput-boolean p4, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    iput p5, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    iput v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    return-void
.end method

.method public static blacklist fromBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/NotificationProgressModel;
    .locals 8

    const-string v0, "indeterminateColor"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/internal/widget/NotificationProgressModel;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(I)V

    return-object p0

    :cond_0
    const-string/jumbo v0, "segments"

    const-class v2, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v0, "points"

    const-class v2, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressPointsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v0, "progress"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "isStyledByProgress"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v0, "segmentsFallColor"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    new-instance v2, Lcom/android/internal/widget/NotificationProgressModel;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(Ljava/util/List;Ljava/util/List;IZI)V

    return-object v2
.end method


# virtual methods
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
    check-cast p1, Lcom/android/internal/widget/NotificationProgressModel;

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    iget v3, p1, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    iget-boolean v3, p1, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    iget v3, p1, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    iget v3, p1, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    iget-object v3, p1, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    iget-object p1, p1, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getIndeterminateColor()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    return p0
.end method

.method public blacklist getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getProgress()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    return p0
.end method

.method public blacklist getProgressMax()I
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->sum()I

    move-result p0

    return p0
.end method

.method public blacklist getSegments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getSegmentsFallbackColor()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isIndeterminate()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isStyledByProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    return p0
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    if-eqz v1, :cond_0

    const-string p0, "indeterminateColor"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    invoke-static {v1}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "segments"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    invoke-static {v1}, Landroid/app/Notification$ProgressStyle;->getProgressPointsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "points"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    const-string/jumbo v1, "progress"

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isStyledByProgress"

    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    if-eqz p0, :cond_1

    const-string/jumbo v1, "segmentsFallColor"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationProgressModel{mSegments="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsStyledByProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSegmentsFallbackColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIndeterminateColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
