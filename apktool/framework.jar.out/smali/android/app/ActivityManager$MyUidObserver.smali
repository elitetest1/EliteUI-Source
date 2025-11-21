.class final Landroid/app/ActivityManager$MyUidObserver;
.super Landroid/app/UidObserver;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyUidObserver"
.end annotation


# instance fields
.field final blacklist mContext:Landroid/content/Context;

.field final blacklist mListener:Landroid/app/ActivityManager$OnUidImportanceListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityManager$OnUidImportanceListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$MyUidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    iput-object p2, p0, Landroid/app/ActivityManager$MyUidObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public blacklist onUidGone(IZ)V
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityManager$MyUidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 p2, 0x3e8

    invoke-interface {p0, p1, p2}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    return-void
.end method

.method public blacklist onUidStateChanged(IIJI)V
    .locals 0

    iget-object p3, p0, Landroid/app/ActivityManager$MyUidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    iget-object p0, p0, Landroid/app/ActivityManager$MyUidObserver;->mContext:Landroid/content/Context;

    invoke-static {p2, p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result p0

    invoke-interface {p3, p1, p0}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    return-void
.end method
