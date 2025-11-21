.class Landroid/widget/RemoteViews$RemoteCollectionCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteCollectionCache"
.end annotation


# instance fields
.field private final blacklist mIdToUriMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUriToCollectionMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$0K3JyZ6BtSC02I0QK9fYDD4Kp3U(Landroid/widget/RemoteViews$RemoteCollectionCache;Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->lambda$connectAllUniqueIntents$0(Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdToUriMapping(Landroid/widget/RemoteViews$RemoteCollectionCache;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Landroid/widget/RemoteViews$HierarchyRootData;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v2

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplicationInfoCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$ApplicationInfoCache;

    move-result-object v3

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmClassCookies(Landroid/widget/RemoteViews;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, v2, p0, v3, p1}, Landroid/widget/RemoteViews$HierarchyRootData;-><init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$RemoteCollectionCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-direct {v4, p2, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/RemoteViews$RemoteCollectionCache;->addMapping(ILjava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$RemoteCollectionCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    iget-object v2, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    iget-object v2, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mhasSizedRemoteViews(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmSizedRemoteViews(Landroid/widget/RemoteViews;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mhasLandscapeAndPortraitLayouts(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmLandscape(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmPortrait(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    instance-of v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-boolean v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_5

    iget-boolean v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    if-eqz v1, :cond_5

    iput-boolean v4, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    iget v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iget-object v2, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0, v3}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v2, :cond_6

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iput v2, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iget-object v2, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0, v3}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-static {v0, v3}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    goto :goto_1

    :cond_7
    invoke-static {v0}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fgetmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$fgetmViews(Landroid/widget/RemoteViews$RemoteCollectionItems;)[Landroid/widget/RemoteViews;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v4, v1, :cond_2

    aget-object v2, v0, v4

    invoke-direct {p0, v2, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    instance-of v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method private blacklist connectAllUniqueIntents(IILandroid/util/SparseArray;Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-static {v3, p1, p2, p4}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsFutureFromIntentWithTimeout(Landroid/content/Intent;IILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    new-instance v4, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RemoteViews$RemoteCollectionCache;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getItemsFutureFromIntentWithTimeout(Landroid/content/Intent;IILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "RemoteViews"

    const-string p1, "Null intent received when generating adapter future"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p0

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;-><init>(IILjava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p3, p0, v0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->connectAndConsume(Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    new-instance p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p0

    const-wide/16 p1, 0x4e20

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    return-object v1
.end method

.method private synthetic blacklist lambda$connectAllUniqueIntents$0(Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic blacklist lambda$connectAllUniqueIntents$1(I)[Ljava/util/concurrent/CompletableFuture;
    .locals 0

    new-array p0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method static synthetic blacklist lambda$getItemsFutureFromIntentWithTimeout$2(IILjava/util/concurrent/CompletableFuture;Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {p3}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object p3

    invoke-interface {p3, p0, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getRemoteCollectionItems(II)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p1

    const-string p3, "RemoteViews"

    const-string v0, "Error getting collection items from the factory"

    invoke-static {p3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, p1

    :goto_0
    if-nez p0, :cond_0

    new-instance p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p0

    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method blacklist addMapping(ILjava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist collectAllIntentsNoComplete(Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "I",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "RemoteViews"

    const-string p1, "Possibly notifying updates for nonexistent view Id"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Landroid/widget/RemoteViews;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews;Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    const v2, 0xc3500

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    div-int v3, v2, p1

    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$mgetBitmapMemoryUsedByActions(Landroid/widget/RemoteViews;)I

    move-result v1

    sub-int/2addr p2, v1

    div-int/2addr p2, p1

    invoke-direct {p0, v3, p2, v0, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->connectAllUniqueIntents(IILandroid/util/SparseArray;Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method blacklist getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-object p0
.end method

.method blacklist setHierarchyDataForId(ILandroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Error setting hierarchy data for id="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteViews"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {p0, p2}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-eqz p3, :cond_0

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist writeToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V
    .locals 9

    const-wide v0, 0x10b0000000fL

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-wide v3, 0x20b00000001L

    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    iget-object v5, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    const-wide v6, 0x10300000001L

    invoke-virtual {p2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v6, 0x10900000002L

    invoke-virtual {p2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10b00000003L

    invoke-virtual {p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v8, 0x1

    invoke-static {v5, p1, p2, v8}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToProto(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;Z)V

    invoke-virtual {p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
