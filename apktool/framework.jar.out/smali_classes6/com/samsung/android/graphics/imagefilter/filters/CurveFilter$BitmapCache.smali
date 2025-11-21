.class Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;
.super Ljava/lang/Object;
.source "CurveFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;
    }
.end annotation


# static fields
.field private static final blacklist MAX_SIZE:I = 0x1e


# instance fields
.field private final blacklist cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;",
            "Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x1e

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$1;-><init>(Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;IFZ)V

    iput-object v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->cache:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;

    iget-object v1, v1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public blacklist contains(FFFFF)Z
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->cache:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;-><init>(FFFFF)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist get(FFFFF)Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->cache:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;-><init>(FFFFF)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;

    return-object p0
.end method

.method public blacklist getSize()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    return p0
.end method

.method public blacklist put(FFFFFLandroid/graphics/Bitmap;)V
    .locals 6

    new-instance v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;-><init>(FFFFF)V

    new-instance p1, Landroid/graphics/BitmapShader;

    sget-object p2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p6, p2, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance p2, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;

    invoke-direct {p2, v0, p6, p1}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;-><init>(Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;Landroid/graphics/Bitmap;Landroid/graphics/BitmapShader;)V

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
