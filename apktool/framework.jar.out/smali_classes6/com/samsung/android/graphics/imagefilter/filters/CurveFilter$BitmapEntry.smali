.class Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;
.super Ljava/lang/Object;
.source "CurveFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapEntry"
.end annotation


# instance fields
.field final blacklist bitmap:Landroid/graphics/Bitmap;

.field final blacklist key:Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;

.field final blacklist shader:Landroid/graphics/BitmapShader;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;Landroid/graphics/Bitmap;Landroid/graphics/BitmapShader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;->key:Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;

    iput-object p2, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;->shader:Landroid/graphics/BitmapShader;

    return-void
.end method
