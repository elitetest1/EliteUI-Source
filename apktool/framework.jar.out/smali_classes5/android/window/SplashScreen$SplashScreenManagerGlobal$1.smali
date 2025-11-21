.class Landroid/window/SplashScreen$SplashScreenManagerGlobal$1;
.super Landroid/util/Singleton;
.source "SplashScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreen$SplashScreenManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/window/SplashScreen$SplashScreenManagerGlobal;",
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
.method protected blacklist create()Landroid/window/SplashScreen$SplashScreenManagerGlobal;
    .locals 1

    new-instance p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;-><init>(Landroid/window/SplashScreen-IA;)V

    return-object p0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal$1;->create()Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    move-result-object p0

    return-object p0
.end method
