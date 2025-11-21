.class Landroid/app/ActivityClient$1;
.super Landroid/util/Singleton;
.source "ActivityClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/ActivityClient;",
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
.method protected blacklist create()Landroid/app/ActivityClient;
    .locals 1

    new-instance p0, Landroid/app/ActivityClient;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/ActivityClient;-><init>(Landroid/app/ActivityClient-IA;)V

    return-object p0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/app/ActivityClient$1;->create()Landroid/app/ActivityClient;

    move-result-object p0

    return-object p0
.end method
