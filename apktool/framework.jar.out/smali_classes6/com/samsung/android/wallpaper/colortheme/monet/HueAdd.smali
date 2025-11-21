.class final Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;
.super Ljava/lang/Object;
.source "ColorScheme.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/colortheme/monet/Hue;


# instance fields
.field private final blacklist amountDegrees:D


# direct methods
.method public constructor blacklist <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;->amountDegrees:D

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result p1

    float-to-double v0, p1

    iget-wide p0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;->amountDegrees:D

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->wrapDegreesDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final blacklist getAmountDegrees()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;->amountDegrees:D

    return-wide v0
.end method
