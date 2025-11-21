.class public Lcom/android/internal/protolog/ProtoLogGroup;
.super Ljava/lang/Object;
.source "ProtoLogGroup.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLogGroup;


# instance fields
.field private final blacklist mEnabled:Z

.field private blacklist mLogToLogcat:Z

.field private blacklist mLogToProto:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mTag:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mEnabled:Z

    iput-boolean p3, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToProto:Z

    iput-boolean p3, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    return-void
.end method


# virtual methods
.method public blacklist getId()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mEnabled:Z

    return p0
.end method

.method public blacklist isLogToLogcat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    return p0
.end method

.method public blacklist isLogToProto()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToProto:Z

    return p0
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setLogToLogcat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    return-void
.end method

.method public blacklist setLogToProto(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToProto:Z

    return-void
.end method
