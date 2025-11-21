.class final Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;
.super Ljava/lang/Object;
.source "ColorScheme.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;


# instance fields
.field private final blacklist multiple:D


# direct methods
.method public constructor blacklist <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;->multiple:D

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result p1

    float-to-double v0, p1

    iget-wide p0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;->multiple:D

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public final blacklist getMultiple()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;->multiple:D

    return-wide v0
.end method
