.class public Landroid/app/Notification$ProgressStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$ProgressStyle$Segment;,
        Landroid/app/Notification$ProgressStyle$Point;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_PROGRESS_MAX:I = 0x64

.field private static final blacklist KEY_ELEMENT_COLOR:Ljava/lang/String; = "colorInt"

.field private static final blacklist KEY_ELEMENT_ID:Ljava/lang/String; = "id"

.field private static final blacklist KEY_POINT_POSITION:Ljava/lang/String; = "position"

.field private static final blacklist KEY_SEGMENT_LENGTH:Ljava/lang/String; = "length"

.field private static final blacklist MAX_PROGRESS_POINT_LIMIT:I = 0x4

.field private static final blacklist MAX_PROGRESS_SEGMENT_LIMIT:I = 0xa


# instance fields
.field private blacklist mEndIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mIndeterminate:Z

.field private blacklist mIsStyledByProgress:Z

.field private blacklist mProgress:I

.field private blacklist mProgressPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProgressSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mTrackerIcon:Landroid/graphics/drawable/Icon;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    return-void
.end method

.method public static blacklist getProgressPointsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Point;

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "position"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "id"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "colorInt"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getColor()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static blacklist getProgressPointsFromBundleList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v4, "position"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "id"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "colorInt"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v6, Landroid/app/Notification$ProgressStyle$Point;

    invoke-direct {v6, v4}, Landroid/app/Notification$ProgressStyle$Point;-><init>(I)V

    invoke-virtual {v6, v5}, Landroid/app/Notification$ProgressStyle$Point;->setId(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$ProgressStyle$Point;->setColor(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static blacklist getProgressSegmentsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "length"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "id"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "colorInt"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static blacklist getProgressSegmentsFromBundleList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "length"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "id"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "colorInt"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v6, v4}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    invoke-virtual {v6, v5}, Landroid/app/Notification$ProgressStyle$Segment;->setId(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist sanitizePoint(Landroid/app/Notification$ProgressStyle$Point;II)Landroid/app/Notification$ProgressStyle$Point;
    .locals 1

    new-instance p0, Landroid/app/Notification$ProgressStyle$Point;

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$ProgressStyle$Point;-><init>(I)V

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$ProgressStyle$Point;->setId(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getColor()I

    move-result p1

    invoke-static {p1, p2, p3}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$ProgressStyle$Point;->setColor(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist sanitizeProgressColor(III)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    move p0, p2

    :cond_0
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p0, p1, v0, v1}, Landroid/app/Notification$Builder;->-$$Nest$smensureColorContrast(IID)I

    move-result p0

    return p0
.end method

.method private blacklist sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;
    .locals 1

    new-instance p0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$ProgressStyle$Segment;->setId(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result p1

    invoke-static {p1, p2, p3}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist addExtras(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "android.progressSegments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressPointsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "android.progressPoints"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "android.progress"

    iget v1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.progressIndeterminate"

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.progressMax"

    invoke-virtual {p0}, Landroid/app/Notification$ProgressStyle;->getProgressMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.styledByProgress"

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressTrackerIcon"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressStartIcon"

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    const-string v0, "android.progressEndIcon"

    if-eqz p0, :cond_2

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist addProgressPoint(Landroid/app/Notification$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v0

    const-string v1, "Notification"

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    const-string p1, "Progress points limit is reached. First4 points will be rendered."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0

    :cond_2
    const-string p1, "Dropped the point. The position is a negative or zero integer."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public whitelist addProgressSegment(Landroid/app/Notification$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    const-string p1, "Notification"

    const-string v0, "Dropped the segment. The length is not a positive integer."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    check-cast p1, Landroid/app/Notification$ProgressStyle;

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget v1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    iget-object v3, p1, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    iget-object v3, p1, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, p1, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    iget-object p1, p1, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v0
.end method

.method public blacklist createProgressModel(II)Lcom/android/internal/widget/NotificationProgressModel;
    .locals 9

    iget-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-static {p0}, Landroid/app/Notification$ProgressStyle$Segment;->-$$Nest$fgetmColor(Landroid/app/Notification$ProgressStyle$Segment;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    new-instance v0, Lcom/android/internal/widget/NotificationProgressModel;

    invoke-static {p0, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(I)V

    return-object v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x64

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v4}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v6

    if-gtz v6, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {v3, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-direct {p0, v4, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v3, v5

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v0, v5}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    invoke-direct {p0, v0, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v5, 0xa

    if-le v0, v5, :cond_8

    invoke-interface {v2}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v0}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v0

    move v5, v4

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v6}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v6

    if-eq v6, v0, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_3
    new-instance v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v6, v3}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    invoke-virtual {v6, v0}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0, v6, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move v5, v3

    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$ProgressStyle$Point;

    invoke-virtual {v6}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v7

    if-lez v7, :cond_9

    if-lt v7, v5, :cond_a

    goto :goto_6

    :cond_a
    invoke-direct {p0, v6, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizePoint(Landroid/app/Notification$ProgressStyle$Point;II)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_9

    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_c

    move p1, v1

    move v6, p1

    goto :goto_9

    :cond_c
    invoke-interface {v2}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v0}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v0

    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_e

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v6}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v6

    if-eq v6, v0, :cond_d

    invoke-static {v1, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result p1

    goto :goto_8

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_e
    move p1, v1

    :goto_8
    move v6, p1

    move p1, v1

    :goto_9
    new-instance v1, Lcom/android/internal/widget/NotificationProgressModel;

    iget p2, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    int-to-long v7, p2

    invoke-static {v7, v8, p1, v5}, Ljava/lang/Math;->clamp(JII)I

    move-result v4

    iget-boolean v5, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(Ljava/util/List;Ljava/util/List;IZI)V

    return-object v1
.end method

.method public blacklist displayCustomViewInline()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist getProgress()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    return p0
.end method

.method public whitelist getProgressEndIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist getProgressMax()I
    .locals 5

    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    const/16 v0, 0x64

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v4}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Notification"

    const-string v2, "Notification.ProgressStyle segment total overflowed."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return v0

    :cond_3
    return v3

    :cond_4
    :goto_2
    return v0
.end method

.method public whitelist getProgressPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getProgressSegments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getProgressStartIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist getProgressTrackerIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist isProgressIndeterminate()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    return p0
.end method

.method public whitelist isStyledByProgress()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    return p0
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .locals 6

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetProgressLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x1020494

    if-eqz v2, :cond_0

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    const v5, 0x1020493

    if-eqz v2, :cond_1

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    const v2, 0x102000d

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetColors(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v3

    iget-object v4, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetPrimaryAccentColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Landroid/app/Notification$ProgressStyle;->createProgressModel(II)Lcom/android/internal/widget/NotificationProgressModel;

    move-result-object v0

    const-string/jumbo v3, "setProgressModel"

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v0, "setProgressTrackerIcon"

    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2, v0, p0}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    return-object v1
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public blacklist purgeResources()V
    .locals 1

    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    :cond_1
    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    :cond_2
    return-void
.end method

.method public blacklist reduceImageSizes(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050380

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    :cond_0
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    :cond_1
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2

    const v0, 0x105038e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x105038d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    :cond_2
    return-void
.end method

.method protected blacklist restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string v0, "android.progressSegments"

    const-class v1, Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    const-string v0, "android.progress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    const-string v0, "android.progressIndeterminate"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    const-string v0, "android.styledByProgress"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    const-string v0, "android.progressTrackerIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    const-string v0, "android.progressStartIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    const-string v0, "android.progressEndIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    const-string v0, "android.progressPoints"

    const-class v1, Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Landroid/app/Notification$ProgressStyle;->getProgressPointsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    return-void
.end method

.method public whitelist setProgress(I)Landroid/app/Notification$ProgressStyle;
    .locals 0

    iput p1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    return-object p0
.end method

.method public whitelist setProgressEndIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist setProgressIndeterminate(Z)Landroid/app/Notification$ProgressStyle;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    return-object p0
.end method

.method public whitelist setProgressPoints(Ljava/util/List;)Landroid/app/Notification$ProgressStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Landroid/app/Notification$ProgressStyle;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Point;

    invoke-virtual {p0, v0}, Landroid/app/Notification$ProgressStyle;->addProgressPoint(Landroid/app/Notification$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public whitelist setProgressSegments(Ljava/util/List;)Landroid/app/Notification$ProgressStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)",
            "Landroid/app/Notification$ProgressStyle;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {p0, v0}, Landroid/app/Notification$ProgressStyle;->addProgressSegment(Landroid/app/Notification$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public whitelist setProgressStartIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist setProgressTrackerIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist setStyledByProgress(Z)Landroid/app/Notification$ProgressStyle;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    return-object p0
.end method
