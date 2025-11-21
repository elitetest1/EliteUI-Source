.class public Landroid/app/WallpaperColorOverrideAreas;
.super Ljava/lang/Object;
.source "WallpaperColorOverrideAreas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperColorOverrideAreas$ROTATION;,
        Landroid/app/WallpaperColorOverrideAreas$DISPLAY_TYPE;
    }
.end annotation


# static fields
.field public static final blacklist DISPLAY_TYPE_PHONE:I = 0x0

.field public static final blacklist DISPLAY_TYPE_SUB:I = 0x2

.field public static final blacklist DISPLAY_TYPE_TABLET:I = 0x1

.field public static final blacklist DISPLAY_TYPE_VIRTUAL:I = 0x4

.field public static final blacklist DISPLAY_TYPE_WATCHFACE:I = 0x3

.field private static final blacklist FIRST_DELIMITER:Ljava/lang/String; = ";"

.field public static final blacklist KEY_CUSTOM_WALLPAPER_COLOR_AREAS_HOME:Ljava/lang/String; = "custom_wallpaper_color_areas_home"

.field public static final blacklist KEY_CUSTOM_WALLPAPER_COLOR_AREAS_LOCK:Ljava/lang/String; = "custom_wallpaper_color_areas_lock"

.field public static final blacklist ROTATION_270:I = 0x2

.field public static final blacklist ROTATION_90:I = 0x1

.field public static final blacklist ROTATION_ALL:I = 0x4

.field public static final blacklist ROTATION_LANDSCAPE:I = 0x3

.field public static final blacklist ROTATION_PORTRAIT:I = 0x0

.field private static final blacklist SECOND_DELIMITER:Ljava/lang/String; = "-"

.field public static final blacklist TAG:Ljava/lang/String; = "WallpaperColorOverrideAreas"

.field private static final blacklist THIRD_DELIMITER:Ljava/lang/String; = ":"


# instance fields
.field private blacklist mAreaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSettingsKey:Ljava/lang/String;

.field private blacklist mWhich:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/WallpaperColorOverrideAreas;-><init>(Landroid/content/Context;ILandroid/app/WallpaperColorOverrideAreas;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/app/WallpaperColorOverrideAreas;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/app/WallpaperColorOverrideAreas;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/app/WallpaperColorOverrideAreas;->mWhich:I

    invoke-direct {p0}, Landroid/app/WallpaperColorOverrideAreas;->bindSettingsKey()V

    if-eqz p3, :cond_0

    iget-object p1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p3, p1}, Landroid/app/WallpaperColorOverrideAreas;->fill(Ljava/util/HashMap;)V

    sget-object p1, Landroid/app/WallpaperColorOverrideAreas;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Init with base info. Copied = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist bindSettingsKey()V
    .locals 4

    iget v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mWhich:I

    and-int/lit8 v1, v0, 0x2

    const-string v2, "custom_wallpaper_color_areas_lock"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iput-object v2, p0, Landroid/app/WallpaperColorOverrideAreas;->mSettingsKey:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const-string v0, "custom_wallpaper_color_areas_home"

    iput-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mSettingsKey:Ljava/lang/String;

    return-void

    :cond_1
    iput-object v2, p0, Landroid/app/WallpaperColorOverrideAreas;->mSettingsKey:Ljava/lang/String;

    return-void
.end method

.method private blacklist combineKey(IIJ)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist combineValue(Landroid/graphics/RectF;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist fill(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/graphics/RectF;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist parse(Ljava/lang/String;)V
    .locals 11

    sget-object v0, Landroid/app/WallpaperColorOverrideAreas;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parsing color area : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    aget-object v4, v3, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    aget-object v6, v3, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    aget-object v6, v3, v4

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v7, Landroid/graphics/RectF;

    aget-object v8, v6, v1

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aget-object v9, v6, v4

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v7, v8, v9, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-virtual {v4, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    sget-object v5, Landroid/app/WallpaperColorOverrideAreas;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot parsing area rect : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v3, v4

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist add(IIJLandroid/graphics/RectF;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v1, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v1, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist get(IIJ)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    return-object p0
.end method

.method public blacklist load()V
    .locals 2

    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mSettingsKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/WallpaperColorOverrideAreas;->parse(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist remove(IIJ)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v1, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v1, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist store()V
    .locals 2

    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/WallpaperColorOverrideAreas;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-direct {p0, v2}, Landroid/app/WallpaperColorOverrideAreas;->combineValue(Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
