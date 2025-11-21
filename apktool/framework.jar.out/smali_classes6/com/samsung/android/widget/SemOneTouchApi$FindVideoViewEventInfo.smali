.class Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;
.super Ljava/lang/Object;
.source "SemOneTouchApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemOneTouchApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindVideoViewEventInfo"
.end annotation


# instance fields
.field private blacklist findTopToDown:Z

.field private final blacklist videoViewClassName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetfindTopToDown(Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->findTopToDown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvideoViewClassName(Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->videoViewClassName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->findTopToDown:Z

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->videoViewClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FindVideoViewEventInfo( findTopToDown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->findTopToDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoViewClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->videoViewClassName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
