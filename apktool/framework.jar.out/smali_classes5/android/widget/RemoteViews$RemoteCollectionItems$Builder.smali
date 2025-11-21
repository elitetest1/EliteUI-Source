.class public final Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews$RemoteCollectionItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHasStableIds:Z

.field private final blacklist mIds:Landroid/util/LongArray;

.field private blacklist mViewTypeCount:I

.field private final blacklist mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Landroid/widget/RemoteViews;->-$$Nest$mhasMultipleLayouts(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongArray;->add(J)V

    iget-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RemoteViews used in a RemoteCollectionItems cannot specify separate layouts for orientations or sizes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist build()Landroid/widget/RemoteViews$RemoteCollectionItems;
    .locals 5

    iget v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    invoke-virtual {v2}, Landroid/util/LongArray;->toArray()[J

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/widget/RemoteViews;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/widget/RemoteViews;

    iget-boolean v4, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mHasStableIds:Z

    iget p0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, v2, v3, v4, p0}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>([J[Landroid/widget/RemoteViews;ZI)V

    return-object v0
.end method

.method public whitelist setHasStableIds(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mHasStableIds:Z

    return-object p0
.end method

.method public whitelist setViewTypeCount(I)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .locals 0

    iput p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    return-object p0
.end method
