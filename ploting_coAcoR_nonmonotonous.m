%plot coAcoR non monotunous behavior

%parameters
alpha=5;
beta=1;
gamma=0;
cut_off=4;
Sites=0:30;

transc=Transc_for_Sites2(alpha, beta, gamma, cut_off, Sites);
num_of_sites=0:30;
plot(num_of_sites, transc, 'b', 'linewidth', 3);
xlabel('number fo binding sites');
ylabel('Transcription rate [a.u.]');
hold on


alpha=2.5;
beta=1;
gamma=0;
cut_off=4;
Sites=0:30;

transc=Transc_for_Sites2(alpha, beta, gamma, cut_off, Sites);
num_of_sites=0:30;

plot(num_of_sites, transc, 'g', 'linewidth', 3);
xlabel('number fo binding sites');
ylabel('Transcription rate [a.u.]');
hold on

alpha=5;
beta=0.5;
gamma=0;
cut_off=4;
Sites=0:30;

transc=Transc_for_Sites2(alpha, beta, gamma, cut_off, Sites);
num_of_sites=0:30;

plot(num_of_sites, transc, 'r', 'linewidth', 3);
xlabel('number fo binding sites');
ylabel('Transcription rate [a.u.]');
hold on

alpha=2.5;
beta=0.5;
gamma=0;
cut_off=4;
Sites=0:30;

transc=Transc_for_Sites2(alpha, beta, gamma, cut_off, Sites);
num_of_sites=0:30;

plot(num_of_sites, transc, 'm', 'linewidth', 3);
xlabel('Number fo binding sites');
ylabel('Transcription rate [a.u.]');
hold on

transc=Transc_for_Sites2(alpha, beta, gamma, cut_off, Sites);
num_of_sites=0:30;

alpha=100;
beta=0.1;
gamma=0;
cut_off=4;
Sites=0:30;
transc=Transc_for_Sites2(alpha, beta, gamma, cut_off, Sites);


plot(num_of_sites, transc, 'k', 'linewidth', 3);
xlabel('Number fo binding sites');
ylabel('Transcription rate [a.u.]');
hold on