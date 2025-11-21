.class public Landroid/app/SemAppIconSolution;
.super Ljava/lang/Object;
.source "SemAppIconSolution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemAppIconSolution$IconScale;,
        Landroid/app/SemAppIconSolution$ShadowDrawable;
    }
.end annotation


# static fields
.field private static final blacklist APPICON_RANGE_ALL_APPS:I = 0x0

.field private static final blacklist APPICON_RANGE_NONE:I = 0x2

.field private static final blacklist APPICON_RANGE_UNASSIGNED_APPS:I = 0x1

.field private static final blacklist APPICON_RANGE_UNDEFINED:I = 0x3

.field private static final blacklist APPICON_SCALE_TYPE_DEFAULT_CONTAINER:I = 0x2

.field private static final blacklist APPICON_SCALE_TYPE_DETERMINED:I = 0x0

.field private static final blacklist APPICON_SCALE_TYPE_THEME:I = 0x1

.field private static final blacklist CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.calendar"

.field private static final blacklist CLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.clockpackage"

.field private static final blacklist DEFAULT_THEME_APPICON_SCALE:F = 0.72f

.field private static final blacklist ICON_SIZE_FACTOR_AMBIENT:F = 0.010416667f

.field private static final blacklist ICON_SIZE_FACTOR_AMBIENT2:F = 0.020833334f

.field public static final blacklist IGNORE_APPICON_THEME:I = 0x2

.field private static final blacklist INVALID_RESOURCE_ID:I = 0x0

.field private static final blacklist LIVEICON_BOOLEAN_NAME:Ljava/lang/String; = "liveicon_from_theme"

.field private static final blacklist MATRIX_MOVE:[[I

.field private static final blacklist MATRIX_POINT_ONEDOT:[[I

.field private static final blacklist MATRIX_POINT_THEMECROP:[[I

.field private static final blacklist MATRIX_PROGRESS:[[I

.field private static final blacklist PACKAGE_NAME_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field public static final blacklist PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

.field private static final blacklist RES_LOCKSCREEN_SHORTCUT_BG:Ljava/lang/String; = "ic_shortcut_theme_bg"

.field private static final blacklist SAMSUNG_THEME_APPICON_SCALE:F = 0.7f

.field public static final blacklist SET_APPICON_COLORTHEME:I = 0x3

.field public static final blacklist SET_APPICON_THEME:I = 0x0

.field private static final blacklist SHADOW_ALPHA_AMBIENT:I = 0x29

.field private static final blacklist SHADOW_ALPHA_AMBIENT2:I = 0x1a

.field private static final blacklist TAG:Ljava/lang/String; = "AppIconSolution"

.field private static final blacklist TYPE_BOOL:Ljava/lang/String; = "bool"

.field private static final blacklist TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final blacklist UNSET_APPICON_THEME:I = 0x1

.field private static blacklist sLayerColorForNight:I

.field private static blacklist sUniqueInstance:Landroid/app/SemAppIconSolution;


# instance fields
.field private final blacklist LIMIT_ICON_SIZE:I

.field private final blacklist LIMIT_SHADOW_SIZE:I

.field private final blacklist RESNAME_MONOCHROME:Ljava/lang/String;

.field private blacklist mAppIconPackageName:Ljava/lang/String;

.field private blacklist mCachedAPKContents:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/APKContents;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIgnoreAppIconThemeHost:Z

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mPaintForCrop:Landroid/graphics/Paint;

.field private blacklist mSamsungThemeAppIconMask:Z

.field private blacklist mSamsungThemeAppIconRange:I

.field private blacklist mSamsungThemeAppIconScale:F

.field private final blacklist mShadowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mThemeAppIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mThemePackageName:Ljava/lang/String;

.field private final blacklist mThemeSync:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 19

    const-string v0, "#19000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/app/SemAppIconSolution;->sLayerColorForNight:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget v2, Landroid/app/SemAppIconSolution;->sLayerColorForNight:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v2

    filled-new-array {v0, v1}, [I

    move-result-object v3

    const/4 v4, -0x1

    filled-new-array {v4, v0}, [I

    move-result-object v5

    filled-new-array {v0, v4}, [I

    move-result-object v0

    filled-new-array {v2, v3, v5, v0}, [[I

    move-result-object v0

    sput-object v0, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    filled-new-array {v1, v1}, [I

    move-result-object v0

    filled-new-array {v4, v1}, [I

    move-result-object v2

    filled-new-array {v4, v4}, [I

    move-result-object v3

    filled-new-array {v1, v4}, [I

    move-result-object v1

    filled-new-array {v0, v2, v3, v1}, [[I

    move-result-object v0

    sput-object v0, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    const/16 v0, 0x16

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const/16 v9, 0x60

    const/4 v2, 0x2

    filled-new-array {v9, v2}, [I

    move-result-object v3

    const/16 v4, 0xa9

    move-object v5, v3

    filled-new-array {v4, v0}, [I

    move-result-object v3

    const/16 v6, 0xbd

    filled-new-array {v6, v9}, [I

    move-result-object v7

    move-object v8, v5

    filled-new-array {v4, v4}, [I

    move-result-object v5

    filled-new-array {v9, v6}, [I

    move-result-object v6

    filled-new-array {v0, v4}, [I

    move-result-object v4

    filled-new-array {v2, v9}, [I

    move-result-object v2

    move-object/from16 v18, v8

    move-object v8, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v7

    move-object v7, v4

    move-object/from16 v4, v18

    filled-new-array/range {v1 .. v8}, [[I

    move-result-object v1

    sput-object v1, Landroid/app/SemAppIconSolution;->MATRIX_POINT_ONEDOT:[[I

    const/16 v1, 0x1d

    filled-new-array {v0, v1}, [I

    move-result-object v10

    const/4 v2, 0x3

    filled-new-array {v9, v2}, [I

    move-result-object v11

    const/16 v2, 0xaa

    filled-new-array {v2, v1}, [I

    move-result-object v12

    const/16 v1, 0xbb

    const/16 v3, 0x5e

    filled-new-array {v1, v3}, [I

    move-result-object v13

    const/16 v1, 0xa3

    filled-new-array {v2, v1}, [I

    move-result-object v14

    const/16 v2, 0xba

    filled-new-array {v9, v2}, [I

    move-result-object v15

    filled-new-array {v0, v1}, [I

    move-result-object v16

    const/4 v0, 0x5

    filled-new-array {v0, v3}, [I

    move-result-object v17

    filled-new-array/range {v10 .. v17}, [[I

    move-result-object v0

    sput-object v0, Landroid/app/SemAppIconSolution;->MATRIX_POINT_THEMECROP:[[I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    const/4 v0, 0x3

    iput v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mIgnoreAppIconThemeHost:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/SemAppIconSolution;->mThemeSync:Ljava/lang/Object;

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mThemeAppIconMap:Ljava/util/HashMap;

    const/16 v1, 0xd8

    iput v1, p0, Landroid/app/SemAppIconSolution;->LIMIT_ICON_SIZE:I

    const/16 v1, 0x3e8

    iput v1, p0, Landroid/app/SemAppIconSolution;->LIMIT_SHADOW_SIZE:I

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mCachedAPKContents:Landroid/util/Pair;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    const-string/jumbo v0, "sep_monochrome_icon"

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->RESNAME_MONOCHROME:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "android"

    const-string/jumbo v3, "sem_appicon_layer_color_for_night"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Landroid/app/SemAppIconSolution;->sLayerColorForNight:I

    sget-object v1, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->ignoreAppIconThemeHosts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/SemAppIconSolution;->mIgnoreAppIconThemeHost:Z

    :cond_1
    return-void
.end method

.method private blacklist getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;
    .locals 6

    iget-boolean v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;
    .locals 20

    move/from16 v8, p5

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    div-int/lit8 v9, v0, 0x2

    const/4 v10, 0x0

    filled-new-array {v10, v10}, [I

    move-result-object v0

    add-int/lit8 v2, p2, -0x1

    filled-new-array {v2, v10}, [I

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    filled-new-array {v2, v4}, [I

    move-result-object v2

    filled-new-array {v10, v4}, [I

    move-result-object v4

    filled-new-array {v0, v3, v2, v4}, [[I

    move-result-object v11

    mul-int v0, p2, p3

    new-array v0, v0, [I

    new-array v1, v1, [I

    const/4 v12, 0x1

    aput p2, v1, v12

    aput p3, v1, v10

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [[I

    if-lez v8, :cond_0

    const/16 v1, 0x66

    move v14, v1

    goto :goto_0

    :cond_0
    move v14, v10

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move/from16 v6, p2

    move/from16 v3, p2

    move/from16 v7, p3

    move-object v1, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v10

    :goto_1
    if-ge v0, v7, :cond_1

    mul-int v2, v3, v0

    aget-object v4, v13, v0

    invoke-static {v1, v2, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    move v2, v0

    move v1, v10

    :goto_2
    const/4 v4, 0x3

    if-le v9, v1, :cond_9

    if-ne v2, v0, :cond_9

    move v5, v10

    :goto_3
    const/4 v6, 0x4

    if-ge v5, v6, :cond_7

    aget-object v15, v11, v5

    aget v16, v15, v10

    aget v15, v15, v12

    if-eq v5, v4, :cond_2

    add-int/lit8 v17, v5, 0x1

    goto :goto_4

    :cond_2
    move/from16 v17, v10

    :goto_4
    move/from16 p0, v4

    move/from16 v4, v16

    move/from16 v16, v10

    :goto_5
    if-nez v16, :cond_5

    aget-object v18, v11, v17

    move/from16 v19, v10

    aget v10, v18, v19

    if-ne v4, v10, :cond_3

    aget v10, v18, v12

    if-ne v15, v10, :cond_3

    move/from16 v16, v12

    :cond_3
    aget-object v10, v13, v15

    aget v10, v10, v4

    ushr-int/lit8 v10, v10, 0x18

    if-le v10, v14, :cond_4

    move v2, v1

    goto :goto_6

    :cond_4
    sget-object v10, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    aget-object v10, v10, v5

    aget v18, v10, v19

    add-int v4, v4, v18

    aget v10, v10, v12

    add-int/2addr v15, v10

    move/from16 v10, v19

    goto :goto_5

    :cond_5
    move/from16 v19, v10

    :goto_6
    if-eq v2, v0, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, p0

    move/from16 v10, v19

    goto :goto_3

    :cond_7
    move/from16 v19, v10

    :goto_7
    if-ne v2, v0, :cond_8

    move/from16 v4, v19

    :goto_8
    if-ge v4, v6, :cond_8

    aget-object v5, v11, v4

    aget v10, v5, v19

    sget-object v15, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    aget-object v15, v15, v4

    aget v16, v15, v19

    add-int v10, v10, v16

    aput v10, v5, v19

    aget v10, v5, v12

    aget v15, v15, v12

    add-int/2addr v10, v15

    aput v10, v5, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v19

    goto :goto_2

    :cond_9
    move/from16 p0, v4

    move/from16 v19, v10

    if-ne v2, v0, :cond_a

    move/from16 v2, v19

    :cond_a
    if-eqz v8, :cond_11

    sget-object v0, Landroid/app/SemAppIconSolution;->MATRIX_POINT_ONEDOT:[[I

    aget-object v1, v11, v12

    aget v1, v1, v19

    aget-object v4, v11, v19

    aget v5, v4, v19

    sub-int/2addr v1, v5

    add-int/2addr v1, v12

    aget-object v5, v11, p0

    aget v5, v5, v12

    aget v4, v4, v12

    sub-int/2addr v5, v4

    add-int/2addr v5, v12

    move/from16 v4, v19

    move v6, v4

    :goto_9
    const/16 v9, 0x8

    if-ge v4, v9, :cond_c

    aget-object v9, v0, v4

    aget v10, v9, v19

    mul-int/2addr v10, v1

    div-int/lit16 v10, v10, 0xc0

    aget-object v14, v11, v19

    aget v15, v14, v19

    add-int/2addr v10, v15

    aget v9, v9, v12

    mul-int/2addr v9, v5

    div-int/lit16 v9, v9, 0xc0

    aget v14, v14, v12

    add-int/2addr v9, v14

    aget-object v9, v13, v9

    aget v9, v9, v10

    ushr-int/lit8 v9, v9, 0x18

    const/16 v10, 0x1a

    if-le v9, v10, :cond_b

    add-int/lit8 v6, v6, 0x1

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    if-ne v6, v9, :cond_f

    if-ne v8, v12, :cond_d

    const v0, 0x3f6147ae    # 0.88f

    goto :goto_a

    :cond_d
    if-ne v3, v7, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    move v10, v12

    goto :goto_b

    :cond_e
    const v0, 0x3f2e147b    # 0.68f

    goto :goto_a

    :cond_f
    if-ne v8, v12, :cond_10

    const v0, 0x3f70a3d7    # 0.94f

    goto :goto_a

    :cond_10
    const v0, 0x3f3851ec    # 0.72f

    goto :goto_a

    :cond_11
    move/from16 v0, p4

    :goto_a
    move/from16 v10, v19

    :goto_b
    new-instance v1, Landroid/app/SemAppIconSolution$IconScale;

    invoke-direct {v1, v2, v0, v10}, Landroid/app/SemAppIconSolution$IconScale;-><init>(IFZ)V

    return-object v1
.end method

.method private blacklist getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;
    .locals 19

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    div-int/lit8 v8, v0, 0x2

    const/4 v9, 0x0

    filled-new-array {v9, v9}, [I

    move-result-object v0

    add-int/lit8 v2, p2, -0x1

    filled-new-array {v2, v9}, [I

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    filled-new-array {v2, v4}, [I

    move-result-object v2

    filled-new-array {v9, v4}, [I

    move-result-object v4

    filled-new-array {v0, v3, v2, v4}, [[I

    move-result-object v10

    mul-int v0, p2, p3

    new-array v0, v0, [I

    new-array v1, v1, [I

    const/4 v11, 0x1

    aput p2, v1, v11

    aput p3, v1, v9

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move/from16 v6, p2

    move/from16 v3, p2

    move/from16 v7, p3

    move-object v1, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v9

    :goto_0
    if-ge v0, v7, :cond_0

    mul-int v2, v3, v0

    aget-object v4, v12, v0

    invoke-static {v1, v2, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v2, v0

    move v1, v9

    :goto_1
    const/4 v4, 0x3

    const/16 v5, 0x1a

    if-le v8, v1, :cond_8

    if-ne v2, v0, :cond_8

    move v6, v9

    :goto_2
    const/4 v13, 0x4

    if-ge v6, v13, :cond_6

    aget-object v14, v10, v6

    aget v15, v14, v9

    aget v14, v14, v11

    if-eq v6, v4, :cond_1

    add-int/lit8 v16, v6, 0x1

    goto :goto_3

    :cond_1
    move/from16 v16, v9

    :goto_3
    move/from16 v17, v9

    :goto_4
    if-nez v17, :cond_4

    aget-object v18, v10, v16

    move/from16 p0, v4

    aget v4, v18, v9

    if-ne v15, v4, :cond_2

    aget v4, v18, v11

    if-ne v14, v4, :cond_2

    move/from16 v17, v11

    :cond_2
    aget-object v4, v12, v14

    aget v4, v4, v15

    ushr-int/lit8 v4, v4, 0x18

    if-le v4, v5, :cond_3

    move v2, v1

    goto :goto_5

    :cond_3
    sget-object v4, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    aget-object v4, v4, v6

    aget v18, v4, v9

    add-int v15, v15, v18

    aget v4, v4, v11

    add-int/2addr v14, v4

    move/from16 v4, p0

    goto :goto_4

    :cond_4
    move/from16 p0, v4

    :goto_5
    if-eq v2, v0, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, p0

    goto :goto_2

    :cond_6
    :goto_6
    move v4, v9

    :goto_7
    if-ge v4, v13, :cond_7

    aget-object v5, v10, v4

    aget v6, v5, v9

    sget-object v14, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    aget-object v14, v14, v4

    aget v15, v14, v9

    add-int/2addr v6, v15

    aput v6, v5, v9

    aget v6, v5, v11

    aget v14, v14, v11

    add-int/2addr v6, v14

    aput v6, v5, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    move/from16 p0, v4

    if-ne v2, v0, :cond_9

    move v2, v9

    :cond_9
    sget-object v0, Landroid/app/SemAppIconSolution;->MATRIX_POINT_THEMECROP:[[I

    aget-object v1, v10, v11

    aget v1, v1, v9

    aget-object v4, v10, v9

    aget v6, v4, v9

    sub-int/2addr v1, v6

    add-int/2addr v1, v11

    aget-object v6, v10, p0

    aget v6, v6, v11

    aget v4, v4, v11

    sub-int/2addr v6, v4

    add-int/2addr v6, v11

    move v4, v9

    move v8, v4

    :goto_8
    const/16 v13, 0x8

    if-ge v4, v13, :cond_b

    aget-object v13, v0, v4

    aget v14, v13, v9

    mul-int/2addr v14, v1

    div-int/lit16 v14, v14, 0xc0

    aget-object v15, v10, v9

    aget v16, v15, v9

    add-int v14, v14, v16

    aget v13, v13, v11

    mul-int/2addr v13, v6

    div-int/lit16 v13, v13, 0xc0

    aget v15, v15, v11

    add-int/2addr v13, v15

    aget-object v13, v12, v13

    aget v13, v13, v14

    ushr-int/lit8 v13, v13, 0x18

    if-le v13, v5, :cond_a

    add-int/lit8 v8, v8, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne v8, v13, :cond_c

    cmpg-float v1, p4, v0

    if-gtz v1, :cond_c

    if-ne v3, v7, :cond_c

    move v9, v11

    goto :goto_9

    :cond_c
    cmpl-float v1, p4, v0

    if-lez v1, :cond_d

    goto :goto_9

    :cond_d
    move/from16 v0, p4

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "IconUnify : scaled rate="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", size="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", alpha="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hold=26"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppIconSolution"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/SemAppIconSolution$IconScale;

    invoke-direct {v1, v2, v0, v9}, Landroid/app/SemAppIconSolution$IconScale;-><init>(IFZ)V

    return-object v1
.end method

.method private blacklist getColorsForIcon(Landroid/content/Context;)[I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v0, 0x106003e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    aput p0, p1, v2

    const-string p0, "#ff000000"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    aput p0, p1, v1

    return-object p1

    :cond_0
    const v0, 0x106003d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    aput p0, p1, v2

    const-string p0, "#ffffffff"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    aput p0, p1, v1

    return-object p1
.end method

.method private blacklist getDrawableFromAppIconPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    const-string v0, "com.android.systemui"

    const-string v1, "Icon package doesnt have resources "

    and-int/lit16 p4, p4, 0x100

    const-string v2, "drawable"

    const-string v3, ", Exception="

    const-string v4, "AppIconSolution"

    const/4 v5, 0x0

    if-eqz p4, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-object p0, v5

    :goto_0
    if-nez p0, :cond_0

    :try_start_1
    const-string p0, "SystemUI package doesn\'t have resources"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    invoke-virtual {p0, p2, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Failed to get LockScreen Shorcut Icon="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v5

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/app/SemAppIconSolution;->getAppIconPackageResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_3
    iget-object p0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Icon="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v5
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Landroid/app/SemAppIconSolution;
    .locals 2

    const-class v0, Landroid/app/SemAppIconSolution;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/SemAppIconSolution;

    invoke-direct {v1, p0}, Landroid/app/SemAppIconSolution;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;

    :cond_0
    sget-object p0, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist getShadowBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    monitor-exit v1

    return-object v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v1, v3, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object p1

    :goto_1
    int-to-float v1, v0

    const v4, 0x3c2aaaab

    mul-float/2addr v4, v1

    const v5, 0x3caaaaab

    mul-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v5

    add-float/2addr v1, v6

    float-to-int v1, v1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x29000000

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v6, p1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x1a000000

    invoke-virtual {v7, v5, v8, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v6, p1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private blacklist getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZI)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZZI)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->getThemeAppIconMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    and-int/lit16 v1, p5, 0x100

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    const-string p2, "ic_shortcut_theme_bg"

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "3rd_party_icon"

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo p2, "mask_for_crop"

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    iget-object p3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz p3, :cond_4

    iget-object p3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_3

    instance-of p4, p2, Landroid/content/pm/ApplicationInfo;

    if-eqz p4, :cond_3

    iget-object p2, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object p2, p3

    goto :goto_0

    :cond_4
    iget-object p3, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz p3, :cond_5

    iget-object p2, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_6

    const-string p3, "[getThemeAppIcon]"

    invoke-direct {p0, p1, p2, p3, p5}, Landroid/app/SemAppIconSolution;->getDrawableFromAppIconPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method private blacklist getThemeAppIconMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mThemeSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mThemeAppIconMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->getThemeResourceFromMappingTable(Landroid/content/Context;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroid/app/SemAppIconSolution;->mThemeAppIconMap:Ljava/util/HashMap;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist getThemePackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5

    const-string v0, "Using cached contents available for "

    const-string v1, "AppIconSolution"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const-string p0, "Couldn\'t get theme package resources, package is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/content/APKContents;->getCurrentThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object p1, p0, Landroid/app/SemAppIconSolution;->mCachedAPKContents:Landroid/util/Pair;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/app/SemAppIconSolution;->mCachedAPKContents:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/APKContents;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    :goto_2
    new-instance p1, Landroid/content/APKContents;

    invoke-direct {p1, v3}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/app/SemAppIconSolution;->mCachedAPKContents:Landroid/util/Pair;

    :goto_3
    invoke-virtual {p1}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_6

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed at get appIconPackage resources, e : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_6
    :goto_4
    return-object v2
.end method

.method private blacklist getThemeParkAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object p0, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/overlays/themepark/icons/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    if-eqz p2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    const-string p1, "AppIconSolution"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist getThemeResourceFromMappingTable(Landroid/content/Context;)V
    .locals 11

    const-string v0, "ThemeApp"

    const-string v1, "className"

    const-string v2, "iconId"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x1170082

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/app/SemAppIconSolution;->mThemeAppIconMap:Ljava/util/HashMap;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_6

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    move-object v6, v5

    :goto_1
    if-ge v7, v4, :cond_5

    invoke-interface {p1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_3

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v5, v9

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v6, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroid/app/SemAppIconSolution;->mThemeAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception during parsing theme app list"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppIconSolution"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method private blacklist registerAppIconInfo(Landroid/content/Context;)V
    .locals 7

    const-string v0, "integer"

    const-string v1, "Icon package doesnt have resources "

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const v3, 0x3f333333    # 0.7f

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    :try_start_0
    invoke-static {v2}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance p1, Landroid/content/APKContents;

    invoke-direct {p1, v2}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "AppIconSolution"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "icon_bg_range"

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    goto :goto_1

    :cond_2
    iput v4, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    :goto_1
    const-string v1, "icon_scale_size"

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    goto :goto_2

    :cond_3
    iput v3, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    const-string/jumbo v0, "mask_from_theme"

    const-string v1, "bool"

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    goto :goto_3

    :cond_4
    iput-boolean v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :try_start_2
    iput-boolean v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    iput v4, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    iput v3, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    iput-boolean v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    :cond_5
    iput v4, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    iput v3, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    iput-boolean v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    return-void
.end method


# virtual methods
.method public blacklist applyNightLayer(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    if-gtz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "skip applying night layer bitmap because of abnormal icon size = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppIconSolution"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    and-int/lit8 p0, p3, 0x40

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_3

    move p3, v0

    goto :goto_1

    :cond_3
    move p3, v1

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    :goto_2
    instance-of p0, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p0, :cond_6

    move-object p0, p2

    check-cast p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setNightModeLayer(Z)V

    return-object p2

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object p2, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_7
    :goto_3
    return-object p2
.end method

.method public blacklist applyPrimaryColorToIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10603e4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-object p2
.end method

.method public blacklist checkAndDrawLiveIconFromTheme(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;ZZI)Landroid/graphics/drawable/Drawable;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p6

    const-string v0, "bool"

    const-string v5, "AppIconSolution"

    iget-object v6, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v6, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v6, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v8, "com.samsung.android.calendar"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "com.sec.android.app.clockpackage"

    const-string v11, "liveicon_from_theme"

    if-nez v9, :cond_2

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v11

    goto :goto_0

    :cond_1
    const-string v6, "clock_liveicon_from_theme"

    goto :goto_0

    :cond_2
    const-string v6, "calendar_liveicon_from_theme"

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/app/SemAppIconSolution;->getAppIconPackageResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v13, :cond_3

    iget-object v14, v1, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v13, v6, v0, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_3
    const/4 v6, -0x1

    goto :goto_1

    :catch_0
    const/4 v6, -0x1

    :catch_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "app icon package doesn\'t have \'liveicon_from_theme\', pkg : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v13, 0x0

    :goto_2
    const/4 v14, 0x1

    if-nez v6, :cond_9

    :try_start_2
    iget-object v6, v1, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    iget-object v15, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v16, 0x0

    const v12, -0x748c4ce2

    if-eq v9, v12, :cond_5

    const v8, 0x83b450e

    if-eq v9, v8, :cond_4

    goto :goto_3

    :cond_4
    :try_start_3
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v9, v14

    goto :goto_4

    :cond_5
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move/from16 v9, v16

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, -0x1

    :goto_4
    if-eqz v9, :cond_8

    if-eq v9, v14, :cond_7

    goto :goto_5

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".clockpackage"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".calendar"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-direct {v1, v2, v6}, Landroid/app/SemAppIconSolution;->getThemePackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8, v11, v0, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    const/16 v16, 0x0

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failed at get liveicon boolean on overlay pkg : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", e : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_9
    const/16 v16, 0x0

    :cond_a
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "load= live icon for "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", from overlay = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-eqz v0, :cond_e

    if-nez v13, :cond_b

    if-gt v0, v14, :cond_b

    goto :goto_a

    :cond_b
    if-eqz p4, :cond_d

    if-eqz p5, :cond_c

    invoke-virtual {v1, v2, v4, v7}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_8

    :cond_c
    invoke-virtual {v1, v2, v4, v7}, Landroid/app/SemAppIconSolution;->wrapIconShadowAndNight(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_d
    :goto_9
    return-object v4

    :cond_e
    :goto_a
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v1 .. v7}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist checkAppIconThemePackage(Landroid/content/Context;)I
    .locals 8

    const-string v0, "AppIconSolution"

    const-string v1, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_active_themepackage"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_appicon_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "couldn\'t access setting property, just keep appIconPackageName empty, ex = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move-object v3, v4

    :cond_0
    iget-boolean v1, p0, Landroid/app/SemAppIconSolution;->mIgnoreAppIconThemeHost:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    sget-object v1, Landroid/content/om/SamsungThemeConstants;->ignoreAppIconThemeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_2

    :cond_1
    move-object v4, v3

    move v1, v6

    :goto_2
    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v7, 0x3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    if-eqz v4, :cond_3

    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-eq v3, v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    iput-object v4, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->registerAppIconInfo(Landroid/content/Context;)V

    :goto_3
    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    if-eqz v2, :cond_7

    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iput-object v2, p0, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    :cond_7
    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-nez v2, :cond_8

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "colortheme_app_icon"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v0, v5, :cond_8

    move v0, v5

    goto :goto_4

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "couldn\'t access setting property, just keep colortheme icon disabled, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v0, v6

    :goto_4
    iget-object p0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz p0, :cond_9

    return v6

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/16 p1, 0x4d

    if-eq p0, p1, :cond_a

    return v7

    :cond_a
    if-eqz v1, :cond_b

    const/4 p0, 0x2

    return p0

    :cond_b
    return v5
.end method

.method public blacklist getAppIconAlphaRelativeScaleRateForIconTray(Landroid/graphics/Bitmap;II)F
    .locals 6

    const v4, 0x3f99999a    # 1.2f

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object p0

    invoke-static {p0}, Landroid/app/SemAppIconSolution$IconScale;->-$$Nest$fgetmScale(Landroid/app/SemAppIconSolution$IconScale;)F

    move-result p0

    return p0
.end method

.method public blacklist getAppIconFromTheme(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.themedesigner"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/app/SemAppIconSolution;->getThemeParkAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2, v0, p4}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_2
    move-object v4, p3

    if-nez v4, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    iget p3, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-nez p3, :cond_4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move v7, p4

    invoke-virtual {v1, v2, v4, v7}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getAppIconPackageResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/app/SemAppIconSolution;->getThemePackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getColorThemeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 8

    const-string v0, "Monochrome image is not existed, Pkg="

    and-int/lit8 v1, p4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    move p4, v2

    goto :goto_1

    :cond_1
    move p4, v3

    :goto_1
    instance-of v4, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v5, 0x0

    const-string v6, "AppIconSolution"

    if-eqz v4, :cond_3

    if-eqz p4, :cond_2

    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_3

    :cond_2
    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p3, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p2

    const-string/jumbo v4, "sep_monochrome_icon"

    const-string v7, "drawable"

    invoke-virtual {p2, v4, v7, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to find monochrome, Pkg="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Exception="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move-object p2, v5

    :goto_3
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->getColorsForIcon(Landroid/content/Context;)[I

    move-result-object p0

    if-nez p4, :cond_6

    aget p1, p0, v2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "ColorTheme icon has returned, color = #"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p3, p0, v3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", isNoAdaptive = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isOnlyBG = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    aget p0, p0, v3

    invoke-direct {p3, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p1, p3, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p1

    :cond_7
    return-object v5
.end method

.method public blacklist getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "NULL"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v9, p5

    invoke-virtual/range {v1 .. v9}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v6, 0x0

    const-string v7, "NULL"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v1, p3

    move/from16 v8, p8

    if-eqz v7, :cond_1

    iget-object v2, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1f

    const-string v2, "android.content.cts"

    iget-object v3, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_15

    :cond_0
    iget-object v2, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v9, v2

    goto :goto_0

    :cond_1
    move-object/from16 v9, p7

    :goto_0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v11, ", isNight = "

    const/4 v12, 0x2

    const-string v13, "AppIconSolution"

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "return adaptive icon for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/SemAppIconSolution;->wrapIconShadowAndNight(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_2
    iget v2, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-ne v2, v12, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "return the original icon because tray option is set to None for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v15, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_7

    iget-object v2, v0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget v2, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-lt v2, v12, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {v0, v6, v7, v15, v8}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_5

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move/from16 p7, v12

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move/from16 p7, v12

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    invoke-virtual {v2, v3, v3, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v2, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v12, v2

    move v2, v5

    goto :goto_2

    :cond_6
    move/from16 p7, v12

    const/4 v4, -0x1

    const/4 v2, 0x0

    move-object v12, v2

    move v2, v4

    :goto_2
    const v5, 0x10803e9

    goto :goto_4

    :cond_7
    :goto_3
    move/from16 p7, v12

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v15, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10803e9

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v27, v12

    move-object v12, v4

    move/from16 v4, v27

    :goto_4
    if-gez v4, :cond_8

    iget-object v14, v0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v14, :cond_8

    iget v14, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-gt v14, v15, :cond_8

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    move v14, v15

    goto :goto_5

    :cond_8
    move v14, v3

    :goto_5
    if-lez v4, :cond_1f

    if-lez v2, :cond_1f

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    if-lez v5, :cond_1f

    if-gtz v15, :cond_9

    goto/16 :goto_15

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "start to load, pkg="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", bg="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v18, v4

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", dr="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v19, v2

    const-string v2, ", forDefault="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", density="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_a

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v15, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    move-object/from16 p6, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v5, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v1, p6

    :goto_6
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v15, 0xd8

    if-ge v15, v5, :cond_c

    const/high16 v20, 0x43580000    # 216.0f

    int-to-float v5, v5

    div-float v20, v20, v5

    int-to-float v2, v2

    mul-float v2, v2, v20

    float-to-int v2, v2

    int-to-float v3, v3

    mul-float v3, v3, v20

    float-to-int v3, v3

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    move-object/from16 p3, v1

    if-eqz v20, :cond_b

    move v1, v15

    goto :goto_7

    :cond_b
    move/from16 v1, v18

    move/from16 v15, v19

    :goto_7
    move/from16 p6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "scale down, pkg="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, p6

    move v8, v1

    move-object/from16 v1, p3

    goto :goto_8

    :cond_c
    move/from16 v8, v18

    move/from16 v15, v19

    move/from16 v18, v5

    :goto_8
    iget-object v5, v0, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_d

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    move-object/from16 p3, v1

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, v0, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, v0, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setDither(Z)V

    goto :goto_9

    :cond_d
    move-object/from16 p3, v1

    const/4 v5, 0x0

    :goto_9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object/from16 v17, v4

    const-string v4, ", iconScale="

    move-object/from16 p6, v4

    const-string v4, ", size="

    move-object/from16 v19, v4

    const-string v4, "getIconScale, pkg="

    move-object/from16 v20, v4

    const/4 v4, 0x0

    const/high16 v21, 0x40000000    # 2.0f

    if-eqz v1, :cond_11

    move v1, v4

    const v4, 0x3f99999a    # 1.2f

    move v8, v5

    const/4 v5, 0x2

    move-object/from16 v1, p3

    move-object/from16 v12, p6

    move-object/from16 v22, v17

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/app/SemAppIconSolution$IconScale;->isCrop()Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x10803ea

    invoke-static {v12, v14, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v4}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v18, v4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-eq v4, v12, :cond_e

    const/4 v12, 0x1

    invoke-static {v5, v4, v4, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_e
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v15, v0, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v14, v5, v8, v8, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "default container[CROP], pkg="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v15, v22

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 p3, v1

    const/4 v1, 0x1

    goto/16 :goto_a

    :cond_f
    move-object/from16 v15, v22

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v18, v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v4

    div-float/2addr v5, v4

    float-to-int v4, v5

    rem-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_10

    add-int/lit8 v4, v4, 0x1

    :cond_10
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v12, 0x0

    iput-boolean v12, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v8, 0x10803e9

    invoke-static {v14, v8, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v8, 0x1

    invoke-static {v5, v4, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v0, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    move-object/from16 p3, v1

    const/4 v1, 0x0

    invoke-virtual {v14, v5, v1, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "default container[Contain], pkg="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v8

    const/4 v1, 0x0

    :goto_a
    int-to-float v4, v4

    div-float v4, v4, v21

    invoke-virtual {v14, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v5, p8

    move v4, v1

    move v1, v3

    move-object v6, v12

    const/4 v3, 0x0

    move-object/from16 v12, p3

    goto/16 :goto_13

    :cond_11
    move-object/from16 v1, p6

    move-object/from16 v4, v17

    move/from16 v17, v5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 p5, v5

    const-string v5, ", relScale="

    if-eqz p5, :cond_12

    int-to-float v1, v8

    move/from16 v16, v1

    iget v1, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    mul-float v16, v16, v1

    move/from16 v18, v1

    int-to-float v1, v2

    div-float v1, v16, v1

    move-object/from16 v16, v10

    int-to-float v10, v15

    mul-float v10, v10, v18

    move/from16 p2, v10

    int-to-float v10, v3

    div-float v10, p2, v10

    move/from16 p2, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v22, v12

    const-string v12, "fromTheme, pkg="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", Scale = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, p2

    move-object/from16 v12, p3

    move/from16 v5, p8

    move/from16 v19, v14

    move v14, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v17

    :goto_b
    move-object/from16 v4, v22

    goto/16 :goto_11

    :cond_12
    move-object/from16 v16, v10

    move-object/from16 v22, v12

    move-object v10, v4

    iget v4, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    iget v12, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_14

    if-eqz v14, :cond_13

    goto :goto_c

    :cond_13
    move-object v0, v5

    const/4 v5, 0x0

    move-object v12, v1

    move-object/from16 v23, v11

    move/from16 v11, v17

    move-object/from16 v1, p3

    move/from16 v17, v8

    move-object/from16 v8, v19

    move/from16 v19, v14

    move-object/from16 v14, v20

    move/from16 v20, v15

    move-object v15, v10

    move-object v10, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v5

    goto :goto_d

    :cond_14
    :goto_c
    move-object v12, v1

    move-object/from16 v23, v11

    move/from16 v11, v17

    move-object/from16 v1, p3

    move/from16 v17, v8

    move-object/from16 v8, v19

    move/from16 v19, v14

    move-object/from16 v14, v20

    move/from16 v20, v15

    move-object v15, v10

    move-object v10, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v5

    :goto_d
    move v0, v2

    move-object v2, v1

    move v1, v3

    move-object v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v8

    invoke-virtual {v3}, Landroid/app/SemAppIconSolution$IconScale;->isCrop()Z

    move-result v5

    if-eqz v5, :cond_17

    move-object v5, v3

    const/4 v3, 0x0

    move v12, v4

    const/4 v4, 0x1

    move v14, v0

    move/from16 v24, v1

    move-object/from16 v26, v5

    move/from16 v25, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p8

    move-object v12, v2

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_16

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_15

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move/from16 p5, v8

    move v8, v11

    goto :goto_e

    :cond_15
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    move-object/from16 p2, v3

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    move/from16 p5, v8

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v8, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v2, p2

    :goto_e
    invoke-virtual {v2, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v22, v2

    move v8, v3

    goto :goto_f

    :cond_16
    move/from16 p5, v8

    move/from16 v8, v17

    move/from16 v4, v20

    :goto_f
    const/4 v3, 0x1

    goto :goto_10

    :cond_17
    move/from16 v5, p8

    move v14, v0

    move/from16 v24, v1

    move-object v12, v2

    move-object/from16 v26, v3

    move/from16 v25, v4

    move/from16 p5, v8

    move-object/from16 v0, p0

    move/from16 v8, v17

    move/from16 v4, v20

    const/4 v3, 0x0

    :goto_10
    int-to-float v2, v8

    mul-float v2, v2, p5

    invoke-virtual/range {v26 .. v26}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v11

    const/16 v17, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v18, v11

    int-to-float v11, v11

    div-float/2addr v2, v11

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v1, "fromTheme2, pkg="

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", tarScale="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v25

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mask="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isCropInTheme = "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v6, v23

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v2

    move v15, v4

    goto/16 :goto_b

    :goto_11
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v15, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v9, v0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v9, :cond_19

    iget v9, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v11, 0x1

    if-gt v9, v11, :cond_19

    if-nez v19, :cond_19

    if-eqz v4, :cond_18

    iget-object v9, v0, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v7, v4, v11, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_18
    const-string v4, "bgBitmap is null, so can\'t draw bg."

    invoke-static {v13, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_12
    if-eqz v3, :cond_1a

    int-to-float v4, v14

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v1, v1

    mul-float/2addr v10, v1

    float-to-int v1, v10

    int-to-float v4, v8

    div-float v4, v4, v21

    int-to-float v8, v15

    div-float v8, v8, v21

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v14, v7

    const/4 v4, 0x0

    goto :goto_13

    :cond_1a
    int-to-float v4, v8

    div-float v4, v4, v21

    int-to-float v8, v15

    div-float v8, v8, v21

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v2, v10}, Landroid/graphics/Canvas;->scale(FF)V

    move v2, v14

    const/4 v4, 0x0

    move-object v14, v7

    :goto_13
    if-eqz v3, :cond_1c

    iget-object v3, v0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget v3, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v8, 0x1

    if-gt v3, v8, :cond_1c

    invoke-static {v12, v2, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    if-nez v4, :cond_1b

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v4, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v4, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1b
    neg-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v21

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, v1, v21

    iget-object v4, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v14, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_14

    :cond_1c
    if-eqz v4, :cond_1e

    iget-object v3, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    if-nez v3, :cond_1d

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v3, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v3, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1d
    neg-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v21

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, v1, v21

    iget-object v3, v0, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v14, v12, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_14

    :cond_1e
    neg-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v21

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, v1, v21

    iget-object v3, v0, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v12, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_14
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v6, p1

    invoke-virtual {v0, v6, v1, v5}, Landroid/app/SemAppIconSolution;->wrapIconShadowAndNight(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1f
    :goto_15
    return-object v1
.end method

.method public blacklist isAppIconThemePackageSet()Z
    .locals 0

    iget-object p0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isCropAppIconUsingBitmap(Landroid/graphics/Bitmap;II)Z
    .locals 6

    const v4, 0x3f99999a    # 1.2f

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/SemAppIconSolution$IconScale;->isCrop()Z

    move-result p0

    return p0
.end method

.method public blacklist needToGetLiveIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Z
    .locals 5

    const-string v0, "AppIconSolution"

    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.calendar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "com.sec.android.app.clockpackage"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "liveicon_from_theme"

    goto :goto_1

    :cond_2
    const-string v1, "clock_liveicon_from_theme"

    goto :goto_1

    :cond_3
    const-string v1, "calendar_liveicon_from_theme"

    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/SemAppIconSolution;->getAppIconPackageResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v2, "bool"

    iget-object p0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    if-nez v4, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "app icon package doesn\'t support live theme icon for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v4

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "app icon package doesn\'t have \'liveicon_from_theme\', pkg : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public blacklist wrapIconShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->getShadowBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/app/SemAppIconSolution$ShadowDrawable;

    invoke-direct {v0, p0, p1}, Landroid/app/SemAppIconSolution$ShadowDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "skip wrapping shadow bitmap because of abnormal icon size = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppIconSolution"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public blacklist wrapIconShadowAndNight(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/SemAppIconSolution;->wrapIconShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
