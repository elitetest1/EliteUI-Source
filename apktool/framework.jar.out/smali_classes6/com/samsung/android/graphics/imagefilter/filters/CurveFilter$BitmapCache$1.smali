.class Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$1;
.super Ljava/util/LinkedHashMap;
.source "CurveFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;",
        "Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;IFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$1;->this$0:Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;",
            "Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$1;->size()I

    move-result p0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
