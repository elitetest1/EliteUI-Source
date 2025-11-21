.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
.super Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.source "AndroidRemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;
    }
.end annotation


# instance fields
.field blacklist mVarNameHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private blacklist decodePreferringAlpha8([B)Landroid/graphics/Bitmap;
    .locals 2

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist addClickArea(IIFFFFI)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p2, p7}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V

    return-void
.end method

.method public blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V

    return-void
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V

    return-void
.end method

.method public blacklist clearDataOverride(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearDataOverride(I)V

    return-void
.end method

.method public blacklist clearFloatOverride(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearFloatOverride(I)V

    return-void
.end method

.method public blacklist clearIntegerOverride(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearIntegerOverride(I)V

    return-void
.end method

.method public blacklist clearNamedDataOverride(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearDataOverride(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist clearNamedFloatOverride(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearFloatOverride(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist clearNamedIntegerOverride(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearIntegerOverride(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist clearNamedStringOverride(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearDataOverride(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist getColor(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getColor(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFloat(I)F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public blacklist getInteger(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public blacklist getLong(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getObject(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPathData(I)[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object p0

    return-object p0
.end method

.method public blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    return-object p0
.end method

.method public blacklist getText(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist hapticEffect(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->haptic(I)V

    return-void
.end method

.method public blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->listenToVar(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    return-void
.end method

.method public blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist loadBitmap(ISSII[B)V
    .locals 12

    move/from16 v3, p4

    move/from16 v7, p5

    move-object/from16 v2, p6

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-eq p2, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_3

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    if-eqz p3, :cond_8

    const/4 v6, 0x4

    if-eq p3, v4, :cond_6

    const/4 v4, 0x3

    if-eq p3, v4, :cond_4

    if-eq p3, v6, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->decodePreferringAlpha8([B)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    move-object v5, v0

    goto :goto_3

    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    array-length v5, v2

    div-int/2addr v5, v6

    move v8, v0

    move-object v0, v1

    new-array v1, v5, [I

    :goto_1
    if-ge v8, v5, :cond_5

    mul-int/lit8 v6, v8, 0x4

    aget-byte v9, v2, v6

    shl-int/lit8 v9, v9, 0x18

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v2, v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, v2, v10

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/2addr v6, v4

    aget-byte v6, v2, v6

    or-int/2addr v6, v9

    aput v6, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0

    :cond_6
    move v8, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    array-length v1, v2

    div-int/2addr v1, v6

    new-array v4, v1, [I

    :goto_2
    if-ge v8, v1, :cond_7

    const v5, 0x1010101

    aget-byte v6, v2, v8

    mul-int/2addr v6, v5

    aput v6, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move/from16 v6, p4

    move-object v11, v4

    move v4, v1

    move-object v1, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0

    :cond_8
    move v8, v0

    array-length v0, v2

    invoke-static {v2, v8, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public blacklist loadColor(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateColor(II)V

    return-void
.end method

.method public blacklist loadFloat(IF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    return-void
.end method

.method public blacklist loadInteger(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateInteger(II)V

    return-void
.end method

.method public blacklist loadPathData(I[F)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPathData(I[F)V

    return-void
.end method

.method public blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist loadText(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateData(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist loadVariableName(Ljava/lang/String;II)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist overrideData(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideData(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist overrideFloat(IF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideFloat(IF)V

    return-void
.end method

.method public blacklist overrideInt(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideInteger(II)V

    return-void
.end method

.method public blacklist overrideInteger(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideInteger(II)V

    return-void
.end method

.method public blacklist overrideText(II)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getText(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideText(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist overrideText(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideData(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V

    return-void
.end method

.method public blacklist putObject(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateObject(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist runAction(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist runNamedAction(ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getText(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->runNamedAction(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setNamedColorOverride(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideColor(II)V

    return-void
.end method

.method public blacklist setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideData(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist setNamedFloatOverride(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideFloat(IF)V

    :cond_0
    return-void
.end method

.method public blacklist setNamedIntegerOverride(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideInt(II)V

    :cond_0
    return-void
.end method

.method public blacklist setNamedLong(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->setValue(J)V

    :cond_0
    return-void
.end method

.method public blacklist setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideText(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist updateOps()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getOpsToUpdate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p0

    return p0
.end method

.method public blacklist useCanvas(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->reset()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->setCanvas(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mWidth:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mHeight:F

    return-void
.end method
