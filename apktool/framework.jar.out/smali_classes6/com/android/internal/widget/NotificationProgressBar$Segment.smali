.class public final Lcom/android/internal/widget/NotificationProgressBar$Segment;
.super Ljava/lang/Object;
.source "NotificationProgressBar.java"

# interfaces
.implements Lcom/android/internal/widget/NotificationProgressBar$Part;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# instance fields
.field private final blacklist mColor:I

.field private blacklist mEnd:F

.field private final blacklist mFaded:Z

.field private final blacklist mFraction:F

.field private blacklist mStart:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColor(Lcom/android/internal/widget/NotificationProgressBar$Segment;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressBar$Segment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFraction(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mStart:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnd(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mEnd:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mStart:F

    return-void
.end method

.method public constructor blacklist <init>(FI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NotificationProgressBar$Segment;-><init>(FIZ)V

    return-void
.end method

.method public constructor blacklist <init>(FIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    iput p2, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    iput-boolean p3, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

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
    check-cast p1, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    iget v3, p1, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    iget v3, p1, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    iget-boolean p1, p1, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public blacklist getWidth()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mEnd:F

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mStart:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Segment(fraction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", faded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), mStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mStart:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mEnd:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
