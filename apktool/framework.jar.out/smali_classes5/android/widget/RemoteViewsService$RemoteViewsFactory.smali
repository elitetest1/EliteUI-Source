.class public interface abstract Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.super Ljava/lang/Object;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteViewsFactory"
.end annotation


# virtual methods
.method public abstract whitelist getCount()I
.end method

.method public abstract whitelist getItemId(I)J
.end method

.method public abstract whitelist getLoadingView()Landroid/widget/RemoteViews;
.end method

.method public blacklist getRemoteCollectionItems(II)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "RemoteViewsService"

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v4

    :try_start_0
    new-instance v5, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v5}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setHasStableIds(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v7

    :goto_0
    if-ge v9, v6, :cond_4

    invoke-interface {v0, v9}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J

    move-result-wide v10

    invoke-interface {v0, v9}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v12

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getViewAt is null it replaced with LoadingView. Pos"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v12

    :cond_0
    invoke-virtual {v12, v3, v7}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v13

    move/from16 v14, p1

    if-le v13, v14, :cond_1

    goto :goto_2

    :cond_1
    if-nez v8, :cond_2

    new-instance v8, Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getBitmapCache()Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/widget/RemoteViews$BitmapCache;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getBitmapCache()Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/RemoteViews$BitmapCache;->mergeWithCache(Landroid/widget/RemoteViews$BitmapCache;)V

    :goto_1
    invoke-virtual {v8}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapMemory()J

    move-result-wide v15

    move/from16 v13, p2

    move-object/from16 v17, v8

    int-to-long v7, v13

    cmp-long v7, v15, v7

    if-ltz v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v10, v11, v12}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, v17

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "Error getting RemoteCollectionItems"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :goto_3
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public abstract whitelist getViewAt(I)Landroid/widget/RemoteViews;
.end method

.method public abstract whitelist getViewTypeCount()I
.end method

.method public abstract whitelist hasStableIds()Z
.end method

.method public abstract whitelist onCreate()V
.end method

.method public abstract whitelist onDataSetChanged()V
.end method

.method public abstract whitelist onDestroy()V
.end method
