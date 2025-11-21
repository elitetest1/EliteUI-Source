.class final Lcom/android/internal/compat/ChangeReporter$ChangeReport;
.super Ljava/lang/Object;
.source "ChangeReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/ChangeReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChangeReport"
.end annotation


# instance fields
.field blacklist mChangeId:J

.field blacklist mState:I


# direct methods
.method constructor blacklist <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    iput p3, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    iget-wide v2, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    iget-wide v4, p1, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget p0, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    iget p1, p1, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
