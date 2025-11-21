.class public Lcom/samsung/android/sdk/sfe/SFEffect;
.super Ljava/lang/Object;
.source "SFEffect.java"


# static fields
.field public static blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SFEffect"

.field private static blacklist mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager; = null

.field private static blacklist mIsInitialized:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFontManager()Lcom/samsung/android/sdk/sfe/font/FontManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    return-object v0
.end method

.method public static blacklist initialize()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    const-string v1, "SFEffect"

    if-eqz v0, :cond_0

    const-string v0, "initialize"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Skip... Already init"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "SFEffect.fonteffect.samsung"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SFEffect libraries is not loaded by loadLibrary!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/sfe/font/FontManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/sfe/font/FontManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Initialization complete"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static blacklist isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    return v0
.end method

.method public static blacklist loadLibrary(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "SFEffect"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
