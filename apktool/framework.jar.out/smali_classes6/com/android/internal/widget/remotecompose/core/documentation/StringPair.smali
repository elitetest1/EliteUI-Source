.class public Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;
.super Ljava/lang/Object;
.source "StringPair.java"


# instance fields
.field final blacklist mName:Ljava/lang/String;

.field final blacklist mValue:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;->mValue:Ljava/lang/String;

    return-object p0
.end method
