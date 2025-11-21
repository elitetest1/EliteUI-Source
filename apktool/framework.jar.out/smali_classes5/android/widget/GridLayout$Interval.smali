.class final Landroid/widget/GridLayout$Interval;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Interval"
.end annotation


# instance fields
.field public final greylist-max-o max:I

.field public final greylist-max-o min:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/widget/GridLayout$Interval;->min:I

    iput p2, p0, Landroid/widget/GridLayout$Interval;->max:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/widget/GridLayout$Interval;

    iget v2, p0, Landroid/widget/GridLayout$Interval;->max:I

    iget v3, p1, Landroid/widget/GridLayout$Interval;->max:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget p0, p0, Landroid/widget/GridLayout$Interval;->min:I

    iget p1, p1, Landroid/widget/GridLayout$Interval;->min:I

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/widget/GridLayout$Interval;->min:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroid/widget/GridLayout$Interval;->max:I

    add-int/2addr v0, p0

    return v0
.end method

.method greylist-max-o inverse()Landroid/widget/GridLayout$Interval;
    .locals 2

    new-instance v0, Landroid/widget/GridLayout$Interval;

    iget v1, p0, Landroid/widget/GridLayout$Interval;->max:I

    iget p0, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-direct {v0, v1, p0}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    return-object v0
.end method

.method greylist-max-o size()I
    .locals 1

    iget v0, p0, Landroid/widget/GridLayout$Interval;->max:I

    iget p0, p0, Landroid/widget/GridLayout$Interval;->min:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
