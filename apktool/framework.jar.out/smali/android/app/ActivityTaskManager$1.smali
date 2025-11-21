.class Landroid/app/ActivityTaskManager$1;
.super Landroid/util/Singleton;
.source "ActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/ActivityTaskManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/ActivityTaskManager;
    .locals 1

    new-instance p0, Landroid/app/ActivityTaskManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/ActivityTaskManager;-><init>(Landroid/app/ActivityTaskManager-IA;)V

    return-object p0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/app/ActivityTaskManager$1;->create()Landroid/app/ActivityTaskManager;

    move-result-object p0

    return-object p0
.end method
