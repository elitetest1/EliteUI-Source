.class interface abstract annotation Landroid/os/logcat/SecurityLogEvent$DataType;
.super Ljava/lang/Object;
.source "SecurityLogEvent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/logcat/SecurityLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2608
    name = "DataType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist FLOAT:I = 0x2

.field public static final blacklist INT:I = 0x0

.field public static final blacklist LONG:I = 0x1

.field public static final blacklist STRING:I = 0x3
