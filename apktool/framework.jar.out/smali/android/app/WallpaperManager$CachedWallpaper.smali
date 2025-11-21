.class Landroid/app/WallpaperManager$CachedWallpaper;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedWallpaper"
.end annotation


# instance fields
.field final blacklist mCachedWallpaper:Landroid/graphics/Bitmap;

.field final blacklist mCachedWallpaperUserId:I

.field final blacklist mWhich:I


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    iput p2, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaperUserId:I

    iput p3, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mWhich:I

    return-void
.end method


# virtual methods
.method blacklist isValid(II)Z
    .locals 1

    iget v0, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaperUserId:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mWhich:I

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
