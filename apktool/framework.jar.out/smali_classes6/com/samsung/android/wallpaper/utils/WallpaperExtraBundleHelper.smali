.class public Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;
.super Ljava/lang/Object;
.source "WallpaperExtraBundleHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WallpaperExtraBundleHelper"


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

.method public static blacklist cloneBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->fromJson(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist fromJson(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->convertJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toJson(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->convertBundleToJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
