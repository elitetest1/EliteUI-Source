.class public final Landroid/view/SurfaceControl$RefreshRateRange;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRateRange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLOAT_TOLERANCE:F = 0.01f

.field public static final blacklist TAG:Ljava/lang/String; = "RefreshRateRange"


# instance fields
.field public blacklist max:F

.field public blacklist min:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRange$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl$RefreshRateRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v1, p2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    move v3, p2

    move p2, p1

    move p1, v3

    :cond_1
    iput p1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iput p2, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    return-void

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong values for min and max when initializing RefreshRateRange : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RefreshRateRange"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iput v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V
    .locals 1

    iget v0, p1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iput v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget p1, p1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iput p1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/SurfaceControl$RefreshRateRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v3, p1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget p0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iget p1, p1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
