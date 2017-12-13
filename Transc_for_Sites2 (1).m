%%This model calculates the transcription for the repressor model (see mathematical model continued) using the patition function.
%%Gicen the vector Sites, and parameters alpha, beta and gamma, the maximal transcription into cut_off, the
%%function calcutltes the transcription for the number of sites in the
%%vector Sites
function y=Transc_for_Sites2(alpha, beta, gamma, cut_off, Sites)

%alpha=10;%%statistical weight of binding of Activator
%beta=3; %%statistical weight of binding of Repressor
%gamma=0; %%statistical weight of binding of Su(H)
 y=zeros(size(Sites));
for p=1:1:length(Sites); %%number of csl sites
    x(p)= p-1;
   y_top=0;
        y(p)=0;    
        z=0;
    for j=0:1:Sites(p)     
        for i=0:1:Sites(p)-j
            for k=0:1:Sites(p)-j-i
            z= z + exp(gammaln(Sites(p)+1)-gammaln(j+1)-gammaln(i+1)-gammaln(k+1)-gammaln(Sites(p)-i-j-k+1)).*(alpha.^i).*(beta.^j).*(gamma.^k);
            end
        end
    end
    for i=0:1:Sites(p)
        for k=0:1:Sites(p)-i
        y_top= y_top + exp(gammaln(Sites(p)+1)-gammaln(i+1)-gammaln(k+1)-gammaln(Sites(p)-i-k+1)).*(alpha.^i).*(gamma.^k).*min(i,cut_off);
        end
    end
    y(p)=y_top/z;
end
%     plot(x, y, 'r+');
%     xlabel('Number of CSL Sites');
%     ylabel('Transcription [a.u]');
%     title('Effects of Repression Length on Transcription');
%     hold on
end